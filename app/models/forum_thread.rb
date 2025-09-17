class ForumThread < ApplicationRecord
  self.table_name = "threads"

  belongs_to :user
  belongs_to :category

  # Casting JSONB → Hash otomatis (Rails 7.1+/8.0)
  attribute :content_json, :json, default: {}
  attribute :meta, :json, default: {}
end
