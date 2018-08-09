require './lib/caesar_cipher.rb'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
    original = params['message']
    shift = params['shift'].to_i
    
    translated = cipher(original, shift) if original != nil
    erb :index, :locals => {:translated => translated, :original => original}
end
