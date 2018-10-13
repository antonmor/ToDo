class AddUserReferenceToTodoLists < ActiveRecord::Migration[5.2]
  def change
    add_reference :todo_lists, :iduser, foreign_key: true
  end
end
