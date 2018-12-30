# your code goes here
def begins_with_r(array)
  array.each do |i|
    if i[0] != 'r'
      return false
    end
  end
  true
end

def contain_a(array)
  a = []
  array.each do |i|
    if i.include? "a"
      a << i
    end
  end
  a
end

def first_wa(array)
  array.each do |i|
    if [i[0], i[1]] === ['w', 'a']
      return i
    end
  end
end

def remove_non_strings(array)
  array.select do |i|
    i.to_s == i
  end
end

def count_elements(array)
  #array.count
  array.each do |i|
    array.count(i)
  end
end

def merge_data(array_one, array_two)
  array_one.zip(array_two)
end

def find_cool(array)

end

def organize_schools(array)
  array.sort do |a, b|
    a <=> b
  end
end
