 require 'spec_helper'
# `Student` class:
# * should initialize with `first_name` √
# * `Student.all` should return all of the student instances √
 # `Student#add_boating_test` should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object) √
# * `Student.find_student` will take in a first name and output the student (Object) with that name √
# * `Student#grade_percentage` should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they've taken, this method should return the Float `33.33`) √

 describe 'Student' do
   describe '#new' do
     it 'should initialize with `first_name' do
       student1 = Student.new("Michael")
      expect{(Student.new("Student"))}.to_not raise_error

    end
  end

  describe '#.all' do
    it 'should return all of the student instances' do
      student1 = Student.new("Jason")
      student2 = Student.new("Ale")
      student3 = Student.new("Tim")
      instructor1 = Instructor.new('Pepe')
      instructor2 = Instructor.new('John')
      instructor3 = Instructor.new('Juan')
      boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_tatus', instructor1)
      boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_tatus', instructor2)
      boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_tatus', instructor3)

      expect(Student.all).to include(student1)
      expect(Student.all).to include(student2)

    end
  end

 describe '#add_boating_test' do
  it 'should initialize a new boating test with a Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)' do
    student1 = Student.new("Lisa")
    student2 = Student.new("Lauren")
    instructor1 = Instructor.new("John")
    student1.add_boating_test('first_test', 'passed', instructor1)

expect{(student1.add_boating_test('boating_test_name', 'boating_test_status', instructor1))}.to_not raise_error
expect(instructor1.instructor_test_names).to include('first_test')
 end
end

describe '#.find_student' do
  it 'will take in a first name and output the student (Object) with that name' do
    student1 = Student.new("Lisa")
    student2 = Student.new("Lauren")
    instructor1 = Instructor.new("John")
    boatingtest2 = BoatingTest.new(student2, 'first_test', 'passed', instructor1)

    expect(Student.find_student('Lauren')).to eq(student2)

  end
end

describe '#grade_percentage' do
 it 'should return the percentage of tests that the student has passed, a Float (so if a student has passed 3 / 9 tests that they\'ve taken, this method should return the Float `33.33`' do
   student1 = Student.new("Lisa")
   student2 = Student.new("Lauren")
   instructor1 = Instructor.new("John")

   student2.add_boating_test('first_test' , 'passed', instructor1)
   student2.add_boating_test('first_test' , 'passed', instructor1)
   student2.add_boating_test('first_test' , 'passed', instructor1)
   student2.add_boating_test('first_test' , 'fail', instructor1)

expect(student2.grade_percentage).to eq(75.00)

 end
end

end
