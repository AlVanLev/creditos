class Credit < ActiveRecord::Base
  belongs_to :user
  validates :credito, length: { maximum: 20 }
end
