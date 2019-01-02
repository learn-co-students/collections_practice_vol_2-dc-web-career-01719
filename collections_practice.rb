def begins_with_r(collection)
  collection.all? do |string|
    string[0] == "r"
  end
end

def contain_a(collection)
  collection.select do |x|
    x.include?("a")
  end
end
