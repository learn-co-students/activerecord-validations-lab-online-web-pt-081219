class TitleValidator < ActiveModel::Validator
  
  def validate(record)
    unless record.title.present? && record.title.match("Won't Believe")
    	record.errors[:title] << "Post is invalid"
    end
  end  
end 