class Post < ActiveRecord::Base
    include ActiveModel::Validations
    validates_with TitleValidator
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250}
    validates :category, inclusion: { in: %w(Fiction non-fiction) }
    #validates :non_click_bait, presence: true

end
