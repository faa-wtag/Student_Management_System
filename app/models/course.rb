class Course < ApplicationRecord
    belongs_to :department
    has_many   :course_users, dependent: :destroy
    has_many   :users, through: :course_users


    validates :course_title, :course_code, presence: true
    
end

