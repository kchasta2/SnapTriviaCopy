class Question < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_one :subject
  accepts_nested_attributes_for :subject

  validates :title, presence: true
  validates :rightAns, presence: true
  validates :wrongAns1, presence: true
  validates :wrongAns2, presence: true
  validates :wrongAns3, presence: true
  validates :subject_title, presence: true


  def self.question_by_subject(sub)
    @question = Question.where("questions.subject_title" => sub)
  end

end
