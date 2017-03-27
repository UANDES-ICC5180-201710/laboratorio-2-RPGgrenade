class CreateCourseStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :course_students do |t|
      t.references :course, course: true, foreign_key: true
      t.references :person, student: true, foreign_key: true

      t.timestamps
    end
  end
end
