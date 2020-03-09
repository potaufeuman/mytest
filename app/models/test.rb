class Test < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) } #新しいテスト順に並べ替え
  validates :user_id,  presence: true
  validates :tested_id
  validates :title,    presence: true, length: { maximum: 50 }
end
