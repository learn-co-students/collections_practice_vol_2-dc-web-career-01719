def begins_with_r(tools)
  result = true
  tools.each do |t|
    if t.start_with?("r") != true
      result = false
    end
  end

  result
end

def contain_a(array)
  result = []
  array.each do |index|
    if index.include?("a")
      result << index 
    end
  end

  result
end

def first_wa(array)
  result = []
  array.each do |index|
    if index.class == String
      if index.start_with?("wa")
        result << index 
      end
    end
  end

  result.first
end

def remove_non_strings(array)
  array.delete_if do |i|
    i.class != String
  end
end

def count_elements(array)
  array.uniq.each do |i|
    count = array.count(i)
    i[:count] = count
  end
end

def merge_data(keys, data)
  keys.collect do |k|
    k.merge(data[0][k[:first_name]])
  end
end

def find_cool(cool)
  cool.find_all do |c|
    c[:temperature] == "cool"
  end
end

def organize_schools(schools)
  schools.sort { |a, z| a <=> z }.to_h
end

