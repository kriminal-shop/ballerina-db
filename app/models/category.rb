class Category < ApplicationRecord
  self.table_name = "categories"
  has_many :forum_threads, class_name: "ForumThread", foreign_key: :category_id
end
