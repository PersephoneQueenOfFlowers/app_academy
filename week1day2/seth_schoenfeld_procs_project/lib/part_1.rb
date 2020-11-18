def my_map(array, &prc)
    return_array = []
    array.each{|ele| return_array << prc.call(ele)}
    return_array
end

def my_select(array, &prc)
  return_array = []
  array.each{|ele| return_array << ele if prc.call(ele) }
  return_array
end

def my_count(array, &prc)
    counter = 0
    array.each {|ele| prc.call(ele) ? (counter += 1) : ()}
    counter
end

def my_any?(array,&prc)
  array.each{ |ele| return true if prc.call(ele)}
  false
end

def my_all?(array, &prc)
    array.each{ |ele| !prc.call(ele) ? (return false) : () }
    true
end

def my_none?(array, &prc)
  array.each{ |ele| return false if prc.call(ele)}
  true
end
