def begins_with_r(collection)
  collection.all? do |string|
    string[0] == "r"
  end
end

def contain_a(collection)
  collection.select {|x| x.include?("a")}
end

def first_wa(collection)
  collection.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(collection)
  collection.keep_if {|obj| obj.is_a? String} 
end

def count_elements(collection)
    collection.each do |x|
        count = collection.count(x)
        collection.uniq!
        x[:count] = count
    end
end

def merge_data(keys, data)
  keys.collect do |x| 
    x.merge(data[0][x[:first_name]])
  end
end

def find_cool(identifier)
  identifier.find_all do |x|
    x[:temperature] == "cool"
  end
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |school, location|
    location.each do |key, value|
    if organized_schools[value] == nil
      organized_schools[value] = [school] #Brackets needed, continued to receive "RuntimeError: can't modify frozen String"
    else organized_schools[value] << school
      end
    end
  end
  organized_schools
end
    
    
  