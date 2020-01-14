class TitleValidator < ActiveModel::Validator
    def validate(record)
        valid_titles = ["Won't Believe", "Secret", "Top"]

        if record.title
            valid_titles.each do |t|
                unless record.title.include? t
                    record.errors[:title] << "Not clickbaity enough!"
                end
                return
            end
        end
    end
end