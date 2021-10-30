class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add routes

get '/messages' do 
  Message.all.to_json

end 

post '/messages' do 
new =Message.create(
  body: params[:body],
  username: params[:username]
)
new.to_json
end 

patch '/messages/:id' do 
  updated = Message.find(params[:id])
  updated.update(
  body: params[:body]
  )
  updated.to_json
end 

delete '/messages/:id' do 
  it = Message.find(params[:id])
  it.destroy
end
  
end
