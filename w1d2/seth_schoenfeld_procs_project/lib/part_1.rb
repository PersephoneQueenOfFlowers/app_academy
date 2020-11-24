def my_map(array, &prc)
    return_array = []
    array.each do |ele| 
        return_array << prc.call(ele)
    end
    return_array
end

def my_select(array, &prc)
  return_array = []
  array.each do |ele|
    if prc.call(ele)
      return_array << ele
    end
  end
  return_array
end

def my_count(array, &prc)
    counter = 0
    array.each {|ele| prc.call(ele) ? (counter += 1) : ()}
    counter
end

def my_any?(array,&prc)
  array.each do |ele| 
    if prc.call(ele)
      return true
    end
  end
  false
end

def my_all?(array, &prc)
    array.each do |ele|
        !prc.call(ele) ? (return false) : ()
    end
    true
end

def my_none?(array, &prc)

  array.each do |ele|
    if prc.call(ele)
      return false
    end
  end
  true
end
