
def begins_with_r(array)
  array.all? {|element| element.split(//).first == "r"}
end

def contain_a(array)
  array.select {|element| element.split(//).any? {|character| character == "a"} }
end

def first_wa(array)
  array.find {|element| element[0..1] == "wa"}
end

def remove_non_strings(array)
  array.select {|element| element.class == String}
end

def count_elements(array)
  array.uniq.each{|hash| hash[:count] = array.count(hash)}
end

def merge_data(keys, data)
  keys.collect {|hash| hash.merge(data[0][hash[:first_name]])}
end

def find_cool(cool)
  cool.find_all {|hash| hash[:temperature] == "cool"}
end

def organize_schools(schools)
  unique_locations_array = schools.collect {|hash| hash[1][:location]}.uniq
  organized_schools = Hash.new
  unique_locations_array.each {|loc| organized_schools[loc] = schools.collect {|hash| hash[0] if hash[1][:location] == loc}}
  unique_locations_array.each {|loc| organized_schools[loc] = organized_schools[loc].reject {|hash| hash == nil}}
  organized_schools
end
