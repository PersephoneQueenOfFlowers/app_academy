def reverser(string, &prc)
    prc.call(string.reverse)

end

def word_changer(str, &prc)
  arr = []
  str.split(" ").each do |ele|
    arr << prc.call(ele)
  end
  arr.join(" ")
end

def greater_proc_value(num, prc, prc2)
    prc1_result = prc.call(num)
    prc2_result = prc2.call(num)

    prc1_result > prc2_result ? (return prc1_result) : (return prc2_result)
end

def and_selector(arr, prc1, prc2)
  new_arr = []
  arr.each do |num|
    if prc1.call(num) && prc2.call(num)  
      new_arr << num
    end
  end
  new_arr
end

def alternating_mapper(arr, prc_even, prc_odd)
    return_arr = []
    arr.each_with_index do |num, idx|
        idx % 2 == 0 ? (return_arr << prc_even.call(num)) : (return_arr << prc_odd.call(num)) 
    end
    return_arr
end