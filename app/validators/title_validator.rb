class TitleValidator < ActiveModel::Validator
    def validate(record)
        if record.title
            need = ["Won't Believe", "Secret", "Top [number]", "Guess"]
            if need.detect {|x| record.title.include?(x) }.nil?
                record.errors[:title] << "Not clickbait-y enough!"
            end 
        end 
    end
end 