require 'spec_helper'
# `Instructor` class:
# * initialize with a name √
# * `Instructor.all` should return all instructors √
# * `Instructor#pass_student`√ should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to 'passed'. If there is no matching test, this method should create a test with the student, that boat test name, and the status 'passed'. Either way, it should return the `BoatingTest` instance.
# * `Instructor#fail_student` should take in a student instance and test name. Like `#pass_student`, it should try to find a matching `BoatingTest` and update its status to 'failed'. If it cannot find an existing `BoatingTest`, it should create one with the name, the matching student, and the status 'failed'.

describe 'Instructor' do
    describe '#.all'  do
      it 'returns all instuctors' do
        student1 = Student.new("Jason")
        student2 = Student.new("Ale")
        student3 = Student.new("Tim")
        instructor1 = Instructor.new('Pepe')
        instructor2 = Instructor.new('John')
        instructor3 = Instructor.new('Juan')
        boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_status', instructor1)
        boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_status', instructor2)
        boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_status', instructor3)

      expect(Instructor.all).to include(instructor1)
      expect(Instructor.all).to include(instructor2)
      expect(Instructor.all).to include(instructor3)

   end
 end

 describe '#pass_student'  do
   it 'should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to \'passed\'. If there is no matching test, this method should create a test with the student, that boat test name, and the status \'passed\'. Either way, it should return the `BoatingTest` instance.' do
   student1 = Student.new("Jason")
   student2 = Student.new("Ale")
   student3 = Student.new("Tim")
   instructor1 = Instructor.new('Pepe')
   instructor2 = Instructor.new('John')
   instructor3 = Instructor.new('Juan')
   boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_status', instructor1)
   boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_status', instructor2)
   #boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_status', instructor3)

   instructor1.pass_student(student1, 'test_name1')
   instructor2.pass_student(student2, 'test_name2')
   instructor3.pass_student(student3, 'test_name4')


  expect(boatingtest1.status).to eq('passed')
    expect(boatingtest2.status).to eq('passed')
      expect(instructor3.instructor_test_names).to include('test_name4')

    end
  end
  describe '#fail_student'  do
    it 'should take in a student instance and test name. If there is a `BoatingTest` whose name and student match the values passed in, this method should update the status of that BoatingTest to \'passed\'. If there is no matching test, this method should create a test with the student, that boat test name, and the status \'passed\'. Either way, it should return the `BoatingTest` instance.' do
    student1 = Student.new("Jason")
    student2 = Student.new("Ale")
    student3 = Student.new("Tim")
    instructor1 = Instructor.new('Pepe')
    instructor2 = Instructor.new('John')
    instructor3 = Instructor.new('Juan')
    boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_status', instructor1)
    boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_status', instructor2)
    #boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_status', instructor3)

    instructor1.fail_student(student1, 'test_name1')
    instructor2.fail_student(student2, 'test_name2')
    instructor3.fail_student(student3, 'test_name3')


   expect(boatingtest1.status).to eq('fail')
     expect(boatingtest2.status).to eq('fail')
       expect(instructor3.instructor_test_names).to include('test_name4')

     end
   end

 describe '#instructor_test_names' do
   it 'gets all curretn instructor test names' do
     student1 = Student.new("Jason")
     student2 = Student.new("Ale")
     student3 = Student.new("Tim")
     instructor1 = Instructor.new('Pepe')
     instructor2 = Instructor.new('John')
     instructor3 = Instructor.new('Juan')
     boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_status', instructor1)
     boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_status', instructor2)
     boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_status', instructor3)

     expect(instructor1.instructor_test_names).to include('test_name1')
     expect(instructor2.instructor_test_names).to include('test_name2')
     expect(instructor3.instructor_test_names).to include('test_name3')

  end
 end

end
