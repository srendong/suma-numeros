require 'sinatra'

get '/' do
    @count = params[:item]
    @count = 0 if @count == nil
    erb :index
end

post '/count' do
  @count = params[:count].to_i + 1
  redirect "/?item=#{@count}"
end
