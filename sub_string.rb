def sub_string(string, dict)
  result = Hash.new(0)
  string = string.downcase
  dict.each do |word|
    result[word] = string.scan(word).length if string.include?(word)
  end
  result
end

puts sub_string("Howdy partner, sit down! How HOw How's it going?", ["down", "go", "going", "how", "howdy", "it", "i", "part"])  
