# Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'


# Your Code begins from this line onwards #
# userinput = ARGV


def list
	theSong = Song.all
	# space = " "

	a = 1
	puts "No.".ljust(10)+"Title".ljust(35)+"Artist".ljust(26)+"Duration"	
	puts "===".ljust(10)+"=====".ljust(35)+"=====".ljust(26)+"====="
	
	theSong.each do |song|	
		puts a.to_s.ljust(10) + song.title.ljust(35) + song.artist.ljust(26) + song.duration  

		# puts "#{a}. #{song.title}        #{song.artist}            #{song.duration}"
		a+=1
	end
end


array = []

Song.all.each do |song|
	array << song.id
end

id = array[(ARGV[1].to_i - 1)]

  # Song.create(title: 'As long as you love me', artist: Faker::Name.name, duration: '3:12')

case ARGV[0]
	when '--list'
		list
	when '--add'
		Song.create(title: ARGV[1], artist: ARGV[2], duration: ARGV[3])
	when '--update'
		if Song.exists?(id)
			case ARGV[2]
				when 'title:'

					Song.find(id).update(title: ARGV[3..-1].join(" "))
				when 'artist:'
					Song.find(id).update(artist: ARGV[3..-1].join(" "))
				when 'duration:'
					Song.find(id).update(duration: ARGV[3..-1].join(" "))
				else
					puts "command not found"	
			end
		else
			puts "Song is not found!"
		end		

							
	when '--remove'
		if Song.exists?(id)
			delete = Song.find(id)
			delete.destroy
		else
			puts "Song is not found!"
		end		
	
end			


" dsds"






