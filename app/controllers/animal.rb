get '/locations/:id/animals' do
  p @animals = Animal.where(location_id: params[:id])
  erb :"animals/show"
end

get '/locations/:loc_id/animals/:animal_id' do
  "HELLO"
  # erb :"posts/show"
end

