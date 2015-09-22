json.array!(@todos) do |todo|
  json.extract! todo, :id, :description, :due, :note
  json.url todo_url(todo, format: :json)
end
