json.extract! student, :id, :name, :registration_number, :amount, :receipt_number, :created_at, :updated_at
json.url student_url(student, format: :json)