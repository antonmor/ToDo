class TodoList < ApplicationRecord
  has_many :todo_items
  belongs_to :user, optional: true


end
