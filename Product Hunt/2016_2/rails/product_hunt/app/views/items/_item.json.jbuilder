json.extract! item, :id, :title, :number_of_things, :created_at, :updated_at
json.url item_url(item, format: :json)