class Message < ActiveRecord::Base
  #attr_accessible :subject, :body, :sender_id, :recipient_id, :read

  #validates_presence_of :subject, :body, :recipient_id
  validates :subject, length: { minimum: 3, maximum: 35 }
  validates :body, length: { minimum: 3, maximum: 1000 }

  belongs_to :user
end