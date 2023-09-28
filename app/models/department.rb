class Department < ApplicationRecord
    has_many  :courses, dependent: :destroy
    has_many  :users, dependent: :destroy
    validates :dept_name, :dept_code, presence: true
end
