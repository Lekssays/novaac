json.extract! complaint, :id, :title, :content, :created_at, :updated_at
json.url complaint_url(complaint, format: :json)
