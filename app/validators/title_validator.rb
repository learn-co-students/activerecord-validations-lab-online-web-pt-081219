class TitleValidator < ActiveModel::Validator
    @@clickbait = [/Won't Believe/i, /Secret/i, /Top [0-9]*/i, /Guess/i]

    def validate(record)
        unless @@clickbait.any? { |x| x.match(record.title) }
        record.errors.add(:title, "Title must be clickbait")
        end
    end
end