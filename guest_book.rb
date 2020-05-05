require 'date'

class Guestbook
	@@guest_book = {}  
	
	
	def self.add_visit(hash)  
		@hash = hash
		@@guest_book[hash[:name]] = @hash
	end 
	
	def self.self.all_visit 
		puts @@guest_book
	end  
	
	def self.order_date(guest_name) 
		puts @@guest_book[guest_name][:date]
	end 
	
	def self.order_message(guest_name) 
		puts @@guest_book[guest_name][:message]
	end 
	
	def self.sort_date 
		 puts @@guest_book.sort_by{|k,v| v[:date]}
	end 
		
	end
		
end

Guestbook.add_visit({name:"Jim Halpert", date: DateTime.now.to_s, message:"The informative lecture will satisfy all your beet curiosity, and the dawn goose walk will tug at your heart strings."})


Guestbook.add_visit({name:"Pam Beasley", date: DateTime.now.to_s, message:"The architecture reminds one of a quaint Tuscan beet farm, and the natural aroma of the beets drifts into the bedrooms and makes you dream of simpler times."})

Guestbook.order_date("Pam Beasley") 

Guestbook.order_message("Pam Beasley")

Guestbook.all_visit 

Guestbook.sort_date