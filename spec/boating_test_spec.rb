require 'spec_helper'
# `BoatingTest` class:
# * √ should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)
# * √`BoatingTest.all` returns an array of all boating tests
describe 'BoatingTest' do
  describe '#new' do
  it 'should initialize with Student (Object), a boating test name (String), a boating test status (String), and an Instructor (Object)' do
    student1 = Student.new("Jason")
    instructor1 = Instructor.new('Pepe')
    boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_tatus', instructor1)

   expect { BoatingTest.new(student1, 'test_name1', 'test_tatus', instructor1)}.to_not raise_error
   end
  end

  describe '#.all'  do
    it 'returns an array of all boating tests' do
      student1 = Student.new("Jason")
      student2 = Student.new("Ale")
      student3 = Student.new("Tim")
      instructor1 = Instructor.new('Pepe')
      instructor2 = Instructor.new('John')
      instructor3 = Instructor.new('Juan')
      boatingtest1 = BoatingTest.new(student1, 'test_name1', 'test_tatus', instructor1)
      boatingtest2 = BoatingTest.new(student2, 'test_name2', 'test_tatus', instructor2)
      boatingtest3 = BoatingTest.new(student3, 'test_name3', 'test_tatus', instructor3)

    expect { BoatingTest.all.to include(boatingtest1) }
    expect { BoatingTest.all.to include(boatingtest2) }
   expect  { BoatingTest.all.to include(boatingtest3) }

 end
end


end
