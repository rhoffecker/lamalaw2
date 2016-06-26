json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :integer, :first_name, :string, :last_name, :string, :birth_date, :date, :ssn, :string, :home_phone, :string, :work_phone, :string, :cell_phone, :string
  json.url profile_url(profile, format: :json)
end
