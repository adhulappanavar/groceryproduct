json.array!(@groceryproducts) do |groceryproduct|
  json.extract! groceryproduct, :id, :title, :content, :published_on
  json.url groceryproduct_url(groceryproduct, format: :json)
end
