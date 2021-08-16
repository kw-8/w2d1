class Dog
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    #getter methods
    def name
        @name
    end
    def breed
        @breed
    end
    def age
        @age
    end
    def bark
        @bark
    end
    def favorite_foods
        @favorite_foods
    end

    #
    def name=(str)
        @name = str
    end
    
end
