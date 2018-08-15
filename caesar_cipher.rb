require 'sinatra'
#require 'sinatra/reloader'

get '/' do
    original = params['message']
    shift = params['shift'].to_i

    translated = cipher(original, shift) if original != nil
    erb :index, :locals => {:translated => translated, :original => original}
end

def cipher(str, shift)
    str_array = str.split(//)
    new_str = []

    str_array.each do |char|
        if char =~ /[a-z]/
            new_char = ((char.ord + shift) -122) % 26 + 96
        elsif char =~ /[A-Z]/
            new_char = ((char.ord + shift) - 90) % 26 + 64
        else
            new_char = char.ord
        end
        new_str << new_char.chr
    end

    new_str.join
end
