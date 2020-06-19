class TitleValidator < ActiveModel::Validator 

  def validate(record) 
    unless record.title && record.title.include?("Won't Believe" || "Secret" || "Guess" || "Top") 
      record.errors[:title] << "isn't clickbait-y enough!"
    end 
  end 

  end 