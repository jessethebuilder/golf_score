json.array!(@courses) do |course|
  json.extract! course, :id, :name, :tag_line, :description, :course_rating, :slope_rating
  json.url course_url(course, format: :json)
end
