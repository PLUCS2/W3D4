# == Schema Information
#
# Table name: responses
#
#  id         :bigint           not null, primary key
#  user_id    :integer          not null
#  answer_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord

  validate :not_duplicate_response

  belongs_to :answer_choice,
    primary_key: :id,
    foreign_key: :answer_id,
    class_name: :AnswerChoice

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User

  has_one :question, 
    through: :answer_choice, 
    source: :question

  def sibling_responses
    question.responses.where.not(id: self.id)
  end 

  def respondent_already_answered?
    sibling_responses.any? {|response| response.user_id == self.user_id}
  end 
  
  def not_duplicate_response
    raise error if respondent_already_answered?
  end 
end
