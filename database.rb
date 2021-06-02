@hh = {}

def add_person name, age

	puts "This user already added!" if @hh[name]
	@hh[name] = age
end


def show_hash

	@hh.each do |name, age|
  		puts "#{name} is #{age} years old."
	end

end

while true
  	# add until empty line
	print "Enter name: "
	@name = gets.strip.capitalize

	if @name == ""
		show_hash
    	exit
  	
	end

	print "Enter age: "
	@age = gets.to_i

	add_person @name, @age
end