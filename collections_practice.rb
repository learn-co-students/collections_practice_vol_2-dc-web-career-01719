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