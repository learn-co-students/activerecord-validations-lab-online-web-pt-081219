class TitleValidator < ActiveModel::Validator
    def validate(record)
    unless record.title.match?("Won't Believe" || "Secret" || "Top [1..9]" || "Guess")
        errors.add(:title, "Not clickbait-y enough, bro")        
        end
    end
end