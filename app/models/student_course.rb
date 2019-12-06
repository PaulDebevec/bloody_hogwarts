class StudentCourse <ApplicationRecord
  validates_presence_of :name

  belongs_to :student
  belongs_to :course
end
