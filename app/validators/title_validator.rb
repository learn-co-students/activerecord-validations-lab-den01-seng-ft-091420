class TitleValidator < ActiveModel::Validator

    def validate(record)
        if record.title
            required_text = ["Won't Believe", "Secret", "Top[number]", "Guess" ]
            if required_text.detect {|phrases| record.title.include?(phrases)}.nil?
                record.errors[:title] << "Must contain Clickbait"
            end
        end
    end

end