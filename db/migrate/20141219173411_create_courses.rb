class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.binary :course_description
      t.integer :course_semester
      t.string :course_year

      t.timestamps
    end
  end
end
