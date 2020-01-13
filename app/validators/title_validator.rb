class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title == nil
            record.errors[:name] << "No!"
        elsif !(record.title.include?("Won't Believe") || record.title.include?("Top Secret") || record.title.include?("Top") || record.title.include?("Guess"))
            record.errors[:name] << "No!"
        end
    end
end
