# Part A
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a Class called Student that takes in a name (String) and a cohort (integer) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").

require('minitest/autorun')
require_relative('../codeclan_student.rb')

class TestCodeClanStudent < Minitest::Test

  def test_student_creation
    student = Codeclan_Student.new("Mike", 20)
    assert_equal("Mike", student.student_name())
    assert_equal(20, student.student_cohort())
  end

  def test_student_edit
    student = Codeclan_Student.new("Mike", 20)

    student.student_name = ("Mikey")
    student.student_cohort = (200)

    assert_equal("Mikey", student.student_name())
    assert_equal(200, student.student_cohort())

  end

  def test_student_can_talk
    student = Codeclan_Student.new("Mike", 20)
    result = student.student_can_talk("I can talk!")
    assert_equal("I can talk!", result)
  end

  def test_say_favourite_language__student1
    student = Codeclan_Student.new("Mike", 20)
    result = student.say_favourite_language("Ruby")
    assert_equal("I love Ruby!", result)
  end

  def test_say_favourite_language__student2
    student = Codeclan_Student.new("Argos", 25)
    result = student.say_favourite_language("HTML")
    assert_equal("I love HTML!", result)
  end

end
