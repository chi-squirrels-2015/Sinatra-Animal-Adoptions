get '/locations/:location_id/species/:id' do
  @animals = Animal.at_location(params[:location_id]).by_species_id(params[:id])
  
  erb :"animals/show"
end



