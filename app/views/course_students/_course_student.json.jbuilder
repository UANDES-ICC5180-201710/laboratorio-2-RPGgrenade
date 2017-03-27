json.extract! course_student, :id, :course_id, :person_id, :created_at, :updated_at
json.url course_student_url(course_student, format: :json)
