json.array!(@opp_parties) do |opp_party|
  json.extract! opp_party, :id
  json.url opp_party_url(opp_party, format: :json)
end
