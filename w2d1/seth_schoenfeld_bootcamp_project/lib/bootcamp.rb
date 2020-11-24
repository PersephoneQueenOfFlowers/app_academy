class Bootcamp
  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { |hash, key| hash[key] = [] }
  end

  def name  
    @name
  end

  def slogan  
    @slogan
  end

  def teachers  
    @teachers
  end

  def students  
    @students
  end

  def hire str
    @teachers << str
  end 

  def enroll student
    if @students.length < @student_capacity
      @students << student
      return true
    else
      return false     
    end
  end

  def enrolled? student 
    @students.include?(student)
  end

  def student_to_teacher_ratio 
    @students.length / @teachers.length 
  end

  def add_grade student, grade 
    if !students.include?(student)
      return false
    else 
      @grades[student].push(grade)
      return true 
    end
  end

  def num_grades student 
    @grades[student].length
  end

  def average_grade student 
    return nil if !students.include?(student) || @grades[student].length == 0
    (@grades[student].inject{|acc,ele| acc + ele}) / (@grades[student].length)
  end
end
