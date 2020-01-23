class ClickbaitValidator < ActiveModel::Validator
  def validate(record)
    unless record.title && record.title.include?("Won't Believe" || "Secret" || "Top [number]" || "Guess")
      record.errors[:title] << "Not Clickbait-y enough"
    end
  end
end
