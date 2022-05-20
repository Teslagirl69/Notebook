#класс записной книжки
class Book


	def initialize
		@hh = {}
		@last_person = '' 
	end

	def add_person opt
		@last_person = opt[:name_value]
		puts 'Already exist' if @hh[opt[:name_value]]
		@hh[opt[:name_value]] = opt[:age_value]
	end

	def show_hash
		@hh.keys.each do |key|
			age = @hh[key]
		puts "Name: #{key}, age: #{age}"	
		end
	end

	def last_person
	 @last_person
	end


end

b = Book.new
b.add_person :name_value => "Jack", :age_value => 32
b.add_person :name_value => "Mike", :age_value => 38
b.add_person :name_value => "Luci", :age_value => 11

b.show_hash


puts "Last person is: #{b.last_person}"