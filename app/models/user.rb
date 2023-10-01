class User < ApplicationRecord

    belongs_to :department
    has_many   :course_users, dependent: :destroy
    has_many   :courses, through: :course_users

    enum role: { admin: 0, student: 1, teacher: 2 }
    validates :name,  :email, :phone, :role, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
    validates_plausible_phone :phone, presence: true
    validates :password, presence: true



end
