class Post < ActiveRecord::Base
  validates_with ClickbaitValidator
  validates :title, presence: true
  validates :content, length: {minimum: 100}
  validates :summary, length: {maximum: 100}
  validates :category, inclusion: { in: %w(Fiction non-fiction) }
end
