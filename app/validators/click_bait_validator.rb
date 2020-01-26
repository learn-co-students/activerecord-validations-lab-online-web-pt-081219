class ClickBaitValidator < ActiveModel::Validator
    CLICKBAIT = [/Won't Believe/, /Secret/, /Guess/, /Top \d+/]
    
    def validate(record)
      record.errors[:title] << "Needs clickbait" unless CLICKBAIT.any? { |b| record.title =~ b }
    end
  end