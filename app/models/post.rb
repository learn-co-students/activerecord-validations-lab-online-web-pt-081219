class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :content, length: { minimum: 250 }
    validates :summary, length: { maximum: 250 }
    validates :category, inclusion: { in: ["Fiction", "Non-Fiction"] }
    CLICKBAIT_WORDS = ["Won't Believe", "Secret", "Top", "Guess"]
    validate :title, is_clickbait?

    def is_clickbait?
        CLICKBAIT_WORDS.include?(self.title)
    end

end