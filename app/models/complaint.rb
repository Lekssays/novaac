class Complaint < ApplicationRecord
  has_many :answers
  belongs_to :user
  validates :title, presence: true, length: {minimum: 5}
  validates :content,  presence: true
  def author
    User.find(self.user_id)
  end
end
