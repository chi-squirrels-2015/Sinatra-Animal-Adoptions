get '/posts/:id' do
  @animal = Animal.find(params[:id])
  erb :"posts/show"
end
