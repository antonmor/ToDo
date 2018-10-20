class TodoItem < ApplicationRecord
  belongs_to :todo_list #para que funcione bien todo_list, no debe llevar 's' al final

  def completed?
   !completed_at.blank?
  end
  
end
