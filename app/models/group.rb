class Group < ApplicationRecord

  has_many :group_users, dependent: :destroy
  has_many :users, through: :group_users

  validates :name, presence: true, uniqueness: true
  validates :introduction, presence: true, uniqueness: true

  def group_member?(user)
    group_users.where(user_id: user.id).exists?
  end
end
