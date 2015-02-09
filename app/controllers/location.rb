get '/locations/:id'  do
  @location = Location.find(params[:id])
  @species = Species.all
  erb :"species/show"
end
