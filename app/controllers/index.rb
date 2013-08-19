get '/' do
  # Look in app/views/index.erb
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  @form_input = params[:user_input]
  erb :index
end

post '/' do
  puts "[LOG] Posting to /cool_url"
  puts "[LOG] Params: #{params.inspect}"
    @form_input = params[:user_input]

  redirect to "/?user_input=#{@form_input}"
  # erb :post_cool_url
end


get '/cool_url/:user_input' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @form_input = params[:user_input]

  erb :get_cool_url
end

get '/cooler_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cooler_url
end


