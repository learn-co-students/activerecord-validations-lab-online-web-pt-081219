class Post < ActiveRecord::Base
    validates :title, presence: true
    validate :is_clickbait
    validates :content, length: {minimum: 100}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}



    def is_clickbait
        included = false
        @@phrases.each { |phrase| included = true if self.title && self.title.downcase =~ phrase }
        if not included
            errors.add(:title, "You need a more exciting title")
        end
    end

    @@phrases = [/won't believe/, /secret/, /top \d/, /guess/]
end
# =~ is known as the "match operator" and can be used to match a string against a regular expression
#regex