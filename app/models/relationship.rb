class Relationship < ApplicationRecord
  belongs_to :tester, class_name: "User"
  belongs_to :tested, class_name: "User"
  validates :tester_id, presence: true
  validates :tested_id, presence: true
end
