class School < ApplicationRecord
    belongs_to :principal
    has_many :teachers
    validates :name,:reg_no,:address, presence: true
end
