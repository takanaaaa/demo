class Group < ApplicationRecord

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users
  has_many :messages, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :introduction, presence: true, uniqueness: true

  def group_member?(user)
    group_users.where(user_id: user.id).exists?
  end
end
