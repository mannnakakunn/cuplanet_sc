json.array!(@cupnoodles) do |cupnoodle|
  json.extract! cupnoodle, :name, :review, :user_id
  json.url cupnoodle_url(cupnoodle, format: :json)
end