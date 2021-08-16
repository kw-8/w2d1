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

    # setters
    def name=(str)
        @name = str
    end
    def breed=(str)
        @breed = str
    end
    def age=(num)
        @age = num
    end
    
    
    # other methods
    def bark
        @age > 3 ? @bark.upcase : @bark.downcase
    end

    def favorite_food?(food)
        @favorite_foods.any?{|f| food.downcase == f.downcase}
    end
    
end
