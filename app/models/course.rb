# create_table “course”, force: true do |t|
# t.string “course_name”
# t.binary “course_description”
# t.integer “course_semester”
# t.string “course_year”
# end

class Course < ActiveRecord::Base
has_many :books
  enum :course_semester => [:Spring, :Summer, :Fall]
  validates :course_name, :course_description, :course_semester, :course_year, :presence => true
end
