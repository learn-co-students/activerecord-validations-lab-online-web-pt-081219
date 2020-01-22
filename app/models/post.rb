class Post < ActiveRecord::Base
    validates :title, presence: true
    validates(:content, {:length => { :minimum => 250} } )
    validates(:summary, {:length => { :maximum => 250} } )
    validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
    validate :not_clickbait

    NEW = [
        /Won't Believe/,
        /Secret/,
        /Top/,
        /Guess/
      ]
    
        def not_clickbait
            
          if NEW.none? { |n| n.match title}
            errors.add(:title, "this is clickbait")
        end
      end
    
end
