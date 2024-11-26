class Audittrail < ApplicationRecord
    before_save :format_data

    def user
        User.find_by(email: self.modified_by_email)
    end

    private
        def format_data
            self.current_data = self.current_data&.gsub('=&gt;', ':')
            self.old_data = self.old_data&.gsub('=&gt;', ':')
            self.data_differences = self.data_differences&.gsub('=&gt;', ':')
        end

end