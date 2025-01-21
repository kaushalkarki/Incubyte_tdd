
def sum(str)
  return 0 if str == ""
  str = str.split(",")
  total = 0
  str.each do |element|
    total = total + element.to_i  
  end
  total
end

