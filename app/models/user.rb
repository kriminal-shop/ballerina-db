class User < ApplicationRecord
  has_many :forum_threads, class_name: "ForumThread", foreign_key: :user_id
  has_many :credentials
  has_one  :deposit_address
end
