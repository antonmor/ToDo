class TodoPdf < Prawn::Document

    def initialize(todo)
      super(top_margin: 70)
       @todo = todo
       imp_title
       line_items
    end

    def imp_title

     text "#{@todo.title}", size: 30, style: :bold
     text "Created at:  #{@todo.created_at}", size: 12, style: :bold
     text "Description:  #{@todo.description}", size: 12
 
    end

    def line_items
      move_down 20
      table line_items_rows do
        row(0).font_style = :bold
        columns(1..3).aling = :right
        self.row_colors = ["DDDDDD", "FFFFFF"]
        self.header = true
      end

    end

    def line_items_rows
      [["Id Task", "Task to do"]] + 
      @todo.todo_items.map do |item|
        [item.id, item.content]
      end
      
    end
  
end