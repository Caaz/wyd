class Post < ApplicationRecord
  validate :no_repeat
  validates :content, presence: true
  belongs_to :user

  def no_repeat
    # puts user
    if user.posts[-2].content == content then
      puts user.posts.last.inspect
      errors.add(:content, "can't be the same as your last post!")
    end
  end
end
