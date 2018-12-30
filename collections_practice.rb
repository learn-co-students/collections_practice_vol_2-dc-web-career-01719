require 'pry'
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  output=[]
  array.each {|word|
  if word.include?("a")
    output << word
  end
  }
output
end
      
def first_wa(array)
  array.find { |word| word.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.reject { |word| word.class != String}
end

def count_elements(array)
 output = []
 count = {count:1}
  array.collect {|n|
 if output.length == 0
  output << count.merge!(n)
 elsif
  output[0][:name] == n[:name]
  output[0][:count] += 1
  else 
    count = {count:1}
  output[1] = count.merge!(n)
  end }
  output
end


def merge_data(keys, data)
  keys.each {|x|

  person = x[:first_name]
  
  traits = data[0][person]
  traits.each {|trait, value|
  x[trait]=value
    }
    }
end

def find_cool(search)
  output = []
  search.each {|person|
if person[:temperature] == "cool"
  output << person
  end
  }
  output
end

def organize_schools(schools)
  organized_schools = {}
  schools.each {|school, where|
  city = where[:location]
(organized_schools[city] ||= [])<< school
  }
  organized_schools
end