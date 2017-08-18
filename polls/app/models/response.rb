# == Schema Information
#
# Table name: responses
#
#  id         :integer          not null, primary key
#  user_id    :integer          not null
#  choice_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Response < ApplicationRecord
  validates :user_id, :choice_id, presence: true
  
  belongs_to :respondant,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User

  belongs_to :answer_choice,
  primary_key: :id,
  foreign_key: :choice_id,
  class_name: :AnswerChoice
end
