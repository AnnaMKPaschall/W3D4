class AnswerChoice < ApplicationRecord
    validates :question_id, uniqueness: true
    validates :user_id, :question_id, :answer_choice, null: false

    belongs_to :questions,
        class_name: :Question,
        primary_key: :id,
        foreign_key: :question_id

    has_many :responses,
        class_name: :response,
        primary_key: :id,
        foreign_key: :answer_choice_id
end