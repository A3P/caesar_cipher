#Shifts the letters of a string based on the key number
#This program treats all white space as a single space
#All characters are returned lowercase
#By Amir Afshar

require 'sinatra'

if development? 
	require 'sinatra/reloader'
end

def caesar_cipher(string, key)
	string.downcase!

	#represents the ordinal number of "a"
	#all characters ordinal number is subtracted by "a".ord
	#this allows for the the letters start from 0,1,2,... etc
	#instead of 97,98,99,... etc
	base_ord = "a".ord

	output = ""
	array = string.split
	#used for testing
	#puts array.inspect


	array.each do |word|
		#returns each ordinal number
		word.each_codepoint do |codepoint|
			if (codepoint >= base_ord and codepoint <= base_ord + 25)
				output << (((codepoint - base_ord + key) % 26) + base_ord).chr
			else
				output << codepoint.chr
			end
		end
		#insert space between words
		output << " "
	end
	#removes the last space added to the string
	output.chop!

end

get '/' do
	erb :index
end


post '/' do
	message = params['message']
	key = params['key'].to_i
	cipher = caesar_cipher(message, key)

	erb :index, :locals => {:cipher => cipher}
end

