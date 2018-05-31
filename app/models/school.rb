class School < ApplicationRecord
    belongs_to :principal
    validates :name,:reg_no,:address, presence: true
end
