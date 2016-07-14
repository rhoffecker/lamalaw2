json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :first_name, :last_name, :birth_date, :ssn, :home_phone, :work_phone, :cell_phone, :case_number
  json.url profile_url(profile, format: :json)
end
