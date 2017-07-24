json.extract! register, :id, :First_name, :Last_name, :Age, :Address, :Education, :Occupation, :Photo, :created_at, :updated_at
json.url register_url(register, format: :json)
