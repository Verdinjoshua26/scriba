class Comment < ActiveRecord::Base
  belongs_to :transcription
  validates :user_name, presence: true, length: { minimum: 2 }
end
