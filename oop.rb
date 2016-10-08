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

lang = Language.new("Ruby", "Yukihiro Matsumoto")
lang.description
lang.name = "JavaScript"
lang.creator = "Mozilla Foundation"
lang.description




# ===== >>>>> No. 10 <<<<< ===== 






