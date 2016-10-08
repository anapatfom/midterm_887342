# ====================== Method prime_fib ====================== 
# ===== >>>>> No. 2 <<<<< ===== 
def prime_fib (k)
    hash = {}
    k.times { |i|
        if i==0 || i==1
            hash["f#{i}".to_sym] = 1
        else
            hash["f#{i}".to_sym] = hash["f#{(i-1)}".to_sym] + hash["f#{(i-2)}".to_sym]
        end
    }
    return hash
end

# ====================== Method build_tuple_array ====================== 
# ===== >>>>> No. 3 <<<<< ===== 
def build_tuple_array (n)
    array = [[]]
    n.times { |i|
        n.times { |l|
            array.push([ i, l ])
        }
    }
    array.shift
    return array
end

# ====================== Main Programs ====================== 

# ===== >>>>> No. 1 <<<<< ===== 
print "Enter number : "
n = gets.chomp.to_i
my_array = []
puts "================ No. 1 ================"
if n>=1
    (1..n).each{ |i|
        my_array.push(i**3)
    }
    print my_array
else
    puts "Error. Please enter number>=1"
end
puts "\n\n\n"


puts "================ No. 2 ================"
puts prime_fib (n)
puts "\n\n\n"

puts "================ No. 3 ================"
print build_tuple_array (n)
puts "\n\n\n"





US_states = ["Alaska", "Alabama", "Arkansas", "American Samoa", "Arizona", "California", "Colorado", "Connecticut", "District of Columbia", "Delaware", "Florida", "Georgia", "Guam", "Hawaii", "Iowa", "Idaho", "Illinois", "Indiana", "Kansas", "Kentucky", "Louisiana", "Massachusetts", "Maryland", "Maine", "Michigan", "Minnesota", "Missouri", "Mississippi", "Montana", "North Carolina", "North Dakota", "Nebraska", "New Hampshire", "New Jersey", "New Mexico", "Nevada", "New York", "Ohio", "Oklahoma", "Oregon", "Pennsylvania", "Puerto Rico", "Rhode Island", "South Carolina", "South Dakota", "Tennessee", "Texas", "Utah", "Virginia", "Virgin Islands", "Vermont", "Washington", "Wisconsin", "West Virginia", "Wyoming"]

# ===== >>>>> No. 4 <<<<< ===== 
long_name_state_array = []
US_states.each{ |name|
    if name.length > 8
        long_name_state_array.push(name)
    end
}
puts "================ No. 4 ================"
print long_name_state_array
puts "\n\n\n"

# ===== >>>>> No. 5 <<<<< ===== 
start_with_M_N_S_in_name_state_array = []
US_states.each{ |name|
    if ((name[0] == "M") || (name[0] == "N") || (name[0] == "S")) &&  ((name[-1] == "a") || (name[-1] == "e") || (name[-1] == "i") || (name[-1] == "o") || (name[-1] == "u"))
        start_with_M_N_S_in_name_state_array.push(name)
    end
}
puts "================ No. 5 ================"
print start_with_M_N_S_in_name_state_array
puts "\n\n\n"

# ===== >>>>> No. 6 <<<<< ===== 
reverse_name_state_array = []
US_states.each{ |name|
    reverse_name_state_array.push(name.reverse)
}
reverse_name_state_array.sort!

sort_name_state_array = []
reverse_name_state_array.each{ |name|
    sort_name_state_array.push(name.reverse)
}
puts "================ No. 6 ================"
print sort_name_state_array
puts "\n\n\n"



abbr_states = [ ["AK", "Alaska"], 
                ["AL", "Alabama"], 
                ["AR", "Arkansas"], 
                ["AS", "American Samoa"], 
                ["AZ", "Arizona"], 
                ["CA", "California"], 
                ["CO", "Colorado"], 
                ["CT", "Connecticut"], 
                ["DC", "District of Columbia"], 
                ["DE", "Delaware"], 
                ["FL", "Florida"], 
                ["GA", "Georgia"], 
                ["GU", "Guam"], 
                ["HI", "Hawaii"], 
                ["IA", "Iowa"], 
                ["ID", "Idaho"], 
                ["IL", "Illinois"], 
                ["IN", "Indiana"], 
                ["KS", "Kansas"], 
                ["KY", "Kentucky"], 
                ["LA", "Louisiana"], 
                ["MA", "Massachusetts"], 
                ["MD", "Maryland"], 
                ["ME", "Maine"], 
                ["MI", "Michigan"], 
                ["MN", "Minnesota"], 
                ["MO", "Missouri"], 
                ["MS", "Mississippi"], 
                ["MT", "Montana"], 
                ["NC", "North Carolina"], 
                ["ND", "North Dakota"], 
                ["NE", "Nebraska"], 
                ["NH", "New Hampshire"], 
                ["NJ", "New Jersey"], 
                ["NM", "New Mexico"], 
                ["NV", "Nevada"], 
                ["NY", "New York"], 
                ["OH", "Ohio"], 
                ["OK", "Oklahoma"], 
                ["OR", "Oregon"], 
                ["PA", "Pennsylvania"], 
                ["PR", "Puerto Rico"], 
                ["RI", "Rhode Island"], 
                ["SC", "South Carolina"], 
                ["SD", "South Dakota"], 
                ["TN", "Tennessee"], 
                ["TX", "Texas"], 
                ["UT", "Utah"], 
                ["VA", "Virginia"], 
                ["VI", "Virgin Islands"], 
                ["VT", "Vermont"], 
                ["WA", "Washington"], 
                ["WI", "Wisconsin"], 
                ["WV", "West Virginia"], 
                ["WY", "Wyoming"] ]


# ===== >>>>> No. 7 <<<<< ===== 
hash_string_state = {}
abbr_states.each{|tem|
    count = 0
    nick_name = nil
    full_name = nil
    tem.each{|text|
        if count == 0
            nick_name = text
            count = 1
        else
            full_name = text
        end
    }
    hash_string_state[nick_name] = full_name
}

puts "================ No. 7 ================"
print hash_string_state
puts "\n\n\n"



# ===== >>>>> No. 8 <<<<< ===== 
puts "================ No. 8 ================"
abbr_states.each{|tem|
    count = 0
    nick_name = nil
    full_name = nil
    tem.each{|text|
        if count == 0
            nick_name = text
            count = 1
        else
            full_name = text
        end
    }
    
    if nick_name.downcase == full_name[0..1].downcase
        puts "#{nick_name} : #{full_name}"
    end
}
puts "\n\n\n"



