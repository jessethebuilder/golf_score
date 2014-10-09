json.array!(@holes) do |hole|
  json.extract! hole, :id, :number, :name, :par, :tees
  json.url hole_url(hole, format: :json)
end
