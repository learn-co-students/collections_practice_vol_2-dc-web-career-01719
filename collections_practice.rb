def begins_with_r(array)
    array.all? do |x|
        x[0] == "r"
    end
end

def contain_a(array)
   array.select do |x|
       x.include?("a")
   end
end

def first_wa(array)
   array.find do |x|
       x[0..1] == "wa"
   end
end

def remove_non_strings(array)
    array.select do |x|
      x.class == String 
   end
end

def count_elements(array)
    array.each do |x|
        count = array.count(x)
        array.uniq!
        x[:count] = count
    end
end

require "pry"

def merge_data(keys, data)
    keys.each do |keys_arr|
        data.each do |data_arr|
            data_arr.each do |name, name_hash|
                name_hash.each do |atts_key, atts_val|
                    if keys_arr[:first_name] == name
                        keys_arr[atts_key] = atts_val
                    end
                    
                end
            end
        end
    end
    keys
end

def find_cool(cool)
    
    is_cool = []
    
#       #original version, but I did not need to iterate over att_hash to obtain the "cool" value
#        cool.each do |att_hash|
#        att_hash.each do |att, val|
#            if val == "cool"
#                is_cool << att_hash
#            end
#        end
#    end
#    is_cool
    
    cool.each do |att_hash|
        if att_hash[:temperature] == "cool"
                is_cool << att_hash
        end
    end
    is_cool
end

def organize_schools(schools)
    schools_by_loc = {}
    
    schools.each do |name, loc_hash|
        loc_hash.each do |key, val|
            if schools_by_loc[val] == nil #finally figured out how to prevent my iteration from resetting the school_by_loc[val] by setting up a conditional to check against nil class. Something to remember for the future.
            schools_by_loc[val] = [name]
            else schools_by_loc[val] << name
            end
        end
         
    end
    schools_by_loc
end