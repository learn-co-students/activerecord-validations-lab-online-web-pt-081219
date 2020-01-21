class TitleValidator < ActiveModel::Validator 
  # CB = "Won't Believe", "Secret", "Top [number]", or "Guess",,
    def validate(record) 
      if record.title
        unless record.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
            record.errors[:title] << "Cant Clickbait!"
    end
end
end

end