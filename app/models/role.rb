class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |audition|
            audition.actor
        end
    end

    def locations
        self.auditions.map do |audition|
            audition.location
        end
    end

    def lead
        if self.auditions.find_by(hired: true)
            self.auditions.find_by(hired: true)
        else
            'no actor has been hired for this role'
        end
    end

    def understudy
        if self.auditions.where(hired: true).length >= 2
            self.auditions.where(hired: true)[1]
        else
            'no actor has been hired for understudy for this role'
        end
    end
end