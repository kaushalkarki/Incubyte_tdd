
def sum(str)
  #For empty string
  return 0 if str == ""
  
  #To handle delimiter case
  delimiter =  str[2] if str.start_with?("//")
  str = str.gsub(delimiter,",") unless delimiter.nil?
  str.slice(0,3)

  #Core logic
  str = str.gsub("\n",",")
  str = str.split(',')
  total = 0
  str.each do |element|
    total = total + element.to_i  
  end
  total
end

puts sum("5")