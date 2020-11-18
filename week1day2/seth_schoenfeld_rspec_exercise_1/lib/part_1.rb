def average (num1,num2)
  sum = num1 + num2 
  return (sum / 2.0)
end

def average_array(arr)
  sum = 0.0
  arr.each{|ele| sum += ele}
  return sum / arr.length
end

def repeat(str, num)    
  return_str = ""
  num.times do
    return_str << str
  end
  return return_str   
end

def yell(str)
  return str.upcase + "!"
end

def alternating_case(sentence)
  words = sentence.split(" ")
  capitalize = true
  alternated = []
  words.each do |word|
    if capitalize == true
      alternated << word.upcase
      capitalize = false
    else
      alternated << word.downcase
      capitalize = true
    end
  end
  return alternated.join(" ")  
end