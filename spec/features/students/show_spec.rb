require 'rails_helper'

RSpec.describe "When I visit /students/:id" do
  it "I see a list of the students' courses." do
    student_course_1 = Course.create!(name: "Defense against the Dark Arts")
    student_course_2 = Course.create!(name: "Potions")

    student = Student.create!( name: "Casseopia Black",
                                age: 14,
                                house: "Slytherin")
    StudentCourse.create(student_id: student.id, course_id: student_course_1.id)
    StudentCourse.create(student_id: student.id, course_id: student_course_2.id)

    visit "/students/#{student.id}"

    expect(page).to have_content("Defense against the Dark Arts")
    expect(page).to have_content("Potions")
  end
end
