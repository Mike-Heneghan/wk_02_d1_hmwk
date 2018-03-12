class Codeclan_Student
  attr_accessor :student_name , :student_cohort

  def initialize(input_student_name, input_student_cohort)
    @student_name = input_student_name
    @student_cohort = input_student_cohort
  end

  def student_can_talk(statement)
    return statement.to_s
  end

  def say_favourite_language(favourite_language)
    return "I love " + favourite_language.to_s + "!"
  end
end
