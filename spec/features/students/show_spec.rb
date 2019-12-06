require 'rails_helper'

RSpec.describe "When I visit /students/:id" do
  before(:each) do
    @student = Student.create!( name: "Casseopia Black",
                                age: 14,
                                house: "Slytherin")


    visit "/students/#{student.id}"
  end

  it "I see a list of the students' courses." do

    expect(page).to have_content("Defense against the Dark Arts")
  end
end

#
# require 'rails_helper'
#
# RSpec.describe "When I visit /students/:id" do
#   it "I see a list of the students' courses." do
#     student_course_1 = Course.create!(name: "Defense against the Dark Arts")
#
#     student = Student.create!( name: "Casseopia Black",
#                                 age: 14,
#                                 house: "Slytherin")
#
#     dark_arts = student_course_1.student_course.create!(student_course_1)
#   end
# end
