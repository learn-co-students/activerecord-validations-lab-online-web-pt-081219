class PostValidator < ActiveModel::Validator
    def validate(post)
        if post.title != nil && post.title != ""
            unless post.title.include?(("Won't Believe") || ("Secret") || ("Guess") || ("/Top [0-9]*/")) 
                post.errors[:name] << "This is not clickbait!"
            end
        end
    end
end

# If the title does not contain "Won't Believe", "Secret", "Top [number]", or "Guess", the validator should add a validation.

