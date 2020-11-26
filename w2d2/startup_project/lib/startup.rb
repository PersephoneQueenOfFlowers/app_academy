require "employee"

class Startup
  attr_accessor :name, :funding, :salaries, :employees  
  def initialize n_str, funding_num, salaries_hash
    @employees = []
    @name = n_str
    @funding = funding_num 
    @salaries = salaries_hash
  end

  def valid_title? title_string 
    return true if @salaries.include?(title_string)
    false
  end

  def > start_up 
    if start_up.funding < @funding  
      return true
    end
    false
  end

  def hire emp_name, title_str
    valid_title?(title_str) ? (
       @employees << Employee.new(emp_name, title_str)
    ) : (raise StandardError.new "This is an exception")
  end

  def size
    employees.length
  end

  def pay_employee emp_instance
    total_paid = @salaries.values.inject{|acc, ele| acc + ele}
    this_pay = @salaries[emp_instance.title]
    @funding > this_pay ? (
      emp_instance.pay(this_pay)
      @funding -= this_pay
    ) : ( raise )
  end

  def payday  
    employees.each do |emp|
      pay_employee(emp)
    end
  end

  def average_salary
    total = 0
    employees.each do |employee|
      total += @salaries[employee.title]
    end
    total / employees.length
  end

  def close 
    @employees = []
    @funding = 0
  end

  def acquire start_up 
    @funding += start_up.funding 

    start_up.salaries.each do |k,v|
      if !(salaries.has_key?(k))
        salaries[k] = v 
      end
    end 
    start_up.employees.each do |employee|
      @employees << employee
    end 
    start_up.close
  end
end