class TitleValidator < ActiveModel::Validator

  def validate(record)
    unless record.is_clickbait?
      record.errors[:name] << "Clickbait"
    end
  end
  
end