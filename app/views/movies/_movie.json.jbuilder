json.extract! movie, :id, :name, :rating, :release_date, :description, :created_at, :updated_at
json.url movie_url(movie, format: :json)