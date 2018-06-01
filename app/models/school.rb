class School < ApplicationRecord
    belongs_to :principal
    has_many :teachers, dependent: :destroy
    validates :name,:reg_no,:address, presence: true
end
