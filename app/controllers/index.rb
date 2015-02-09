get '/' do
  @locations = Location.all
  # Look in app/views/index.erb
  erb :index
end
