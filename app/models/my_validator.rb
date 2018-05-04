class MyValidator < ActiveModel::Validator
    def validate(record)
        if !record[:user_id] && !record[:new_user_id]
            record.errors.add :base, 'This record is invalid'
        elsif record[:user_id] && record[:new_user_id]
            record.errors.add :base, 'This record is invalid'
        end
    end
end