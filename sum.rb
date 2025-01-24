
def sum(str)
  #For empty string
  return 0 if str == ""
  
  #To handle delimiter case
  delimiter =  str[2] if str.start_with?("//")
  str = str.gsub(delimiter,",") unless delimiter.nil?
  str.slice(0,3)

  #Core logic
  str = str.gsub("\n",",")
  str = str.split(',').map(&:to_i)
  total = 0

  negatives = str.select { |num| num < 0 }
  unless negatives.empty?
    raise ArgumentError, "negative numbers not allowed: #{negatives}"
  end
  str.each do |element|
    total = total + element if element <= 1000 
  end
  total
end