class Citizen
    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name  = last_name
        @age        = age
    end

    attr_accessor :first_name, :last_name, :age

    def can_vote?
        @age >= 18
    end

    def full_name
        "#{@first_name.capitalize} #{@last_name.capitalize}"
    end

    # def first_name
    #     @first_name
    # end

    # def last_name
    #     @last_name
    # end
end
