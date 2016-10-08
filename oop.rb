# ===== >>>>> No. 9 <<<<< ===== 
class Language
    
    attr_accessor :name
    attr_accessor :creator
    
    def initialize(name, creator)
        @name = name
        @creator = creator
    end
    
    def description
        puts "I'm #{@name} and I was create by #{@creator}!"
    end
end
puts "================ No. 9 ================"
lang = Language.new("Ruby", "Yukihiro Matsumoto")
lang.description
lang.name = "JavaScript"
lang.creator = "Mozilla Foundation"
lang.description
puts "\n\n\n"



# ===== >>>>> No. 10 <<<<< ===== 
class Circle
    @@PI = 3.14159
    
    def initialize(r)
        @radius = r
    end
    
    def setRadius(r)
        @radius = r
    end
    
    def getRadius
        return @radius
    end
    
    def getArea
        return @@PI * (@radius**2)
    end
    
    def getCircumference
        return 2 * @@PI * @radius
    end
end

puts "================ No. 10 ================"
circle = Circle.new(10)
puts "Area is #{circle.getArea}"
puts "Diameter is #{circle.getRadius}"
puts "Circumference is #{circle.getCircumference}"

puts "\n\n\n"



