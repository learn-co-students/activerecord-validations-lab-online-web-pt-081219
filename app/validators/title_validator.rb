class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.match?("Won't Believe", "Secret", "Top [number]", "Guess")
            record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
        end
    end
end