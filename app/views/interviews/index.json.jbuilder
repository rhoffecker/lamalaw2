json.array!(@interviews) do |interview|
  json.extract! interview, :id, :yn01, :yn02, :yn03, :yn04, :yn05, :yn06, :document
  json.url interview_url(interview, format: :json)
end
