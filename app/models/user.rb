class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100#" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true, format: {with: /\A\w+\z/}

  has_many :posts
  before_save do |user|
    user.username = user.username.downcase
    if user.id == 1
      user.admin = true
    end
  end
end
