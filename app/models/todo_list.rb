class TodoList < ApplicationRecord
  belongs :user
  has_many :todo_items
end
