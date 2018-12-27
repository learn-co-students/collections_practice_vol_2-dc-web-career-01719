def begins_with_r(tools)
  tools.each { |tool|
    if !tool.start_with?("r")
      return false
    end
  }
  true
end

def contain_a(array)
  contain_a_array = array.select { |element| element.include?("a") }
end

def remove_non_strings(array)
  string_array = array.select { |element| element.class == String }
end

def first_wa(array)
  first_wa = array.find { |element| element[0] == "w" && element[1] == "a"}
end

def count_elements(my_arr)
   new_array = []
   my_arr.each { |item| new_array << item unless new_array.include?(item)}
   new_array.each do |item|
     arr = my_arr.select{|thing| item == thing}
     item[:count] = arr.length
   end
   return new_array
 end

 def merge_data(arr2, arr1)
    arr2.each do |person|
     arr1.each do |annoying_structure|
       annoying_structure[person[:first_name]].each do |key, value|
         person[key] = value
       end
     end
   end
   return arr2
 end

 def find_cool(array)
   cool_array = array.select { |element| element[:temperature] == "cool" }
 end

 def organize_schools(schools)
   organized_schools = Hash.new
   schools.each { |item| organized_schools[item[1][:location]] = [] unless organized_schools.include?(item[1][:location])}
   organized_schools.each do |item|
     arr = schools.each do |school| 
       item[1].push school[0] if school[1][:location] == item[0]
     end
   end
   return organized_schools
 end
