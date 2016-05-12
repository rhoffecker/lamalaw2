json.array!(@user_details) do |user_detail|
  json.extract! user_detail, :id, :name, :date_of_birth, :party_type, :case_id, :phone, :address
  json.url user_detail_url(user_detail, format: :json)
end
