class TodoItem < ApplicationRecord
  belongs_to :todo_lists

  def completed?
   !completed_at.blank?
  end
  
end
