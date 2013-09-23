json.array!(@inventories) do |inventory|
  json.extract! inventory, :title, :description, :quantity
  json.url inventory_url(inventory, format: :json)
end
