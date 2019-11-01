class School
  def initialize
    @roaster = Hash.new {|hash_name, key| hash_name[key] = []}
  end

  def add(student, grade)
    @roaster[grade] << student
  end

  def students(grade)
    @roaster[grade].sort
  end

  def students_by_grade
    @roaster.keys.sort.map { |grade| { grade: grade, students: students(grade) } }
  end
end
