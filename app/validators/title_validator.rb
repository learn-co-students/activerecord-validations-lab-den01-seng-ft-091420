class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title && !record.title.include?("Won't Believe" || "Secret" || "Top[number]" || "Guess")
            record.errors[:title] << "Clickbait Phrases Required"
        end
    end
end