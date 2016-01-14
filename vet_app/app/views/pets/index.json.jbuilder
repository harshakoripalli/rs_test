json.array!(@pets) do |pet|
  json.extract! pet, :id, :name, :type_of_pet, :breed, :age, :weight, :customer_id
  json.url pet_url(pet, format: :json)
end
