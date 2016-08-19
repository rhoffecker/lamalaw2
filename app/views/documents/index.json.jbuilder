json.array!(@documents) do |document|
  json.extract! document, :id, :user_id, :doc_type, :create_date
  json.url document_url(document, format: :json)
end
