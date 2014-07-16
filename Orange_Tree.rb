class Orange_Tree

	def initialize
		@height = 1
		@age = 0
		@oranges = 0
		@alive = true
	end

	def one_year_passes
		if @age < 50
			@oranges = 0
			@age = @age + 1
		else
			puts 'Your orange tree is dead'
			exit
		end
		@height = @height + 1
		if @age > 3
			@oranges = @age * 4
		end
	end

	def pick_an_orange
		if @oranges > 0
			@oranges = @oranges - 1
		else
			puts 'There are no more oranges to pick'
		end
	end

	def height
		@height
	end

	def age
		@age
	end

	def oranges
		@oranges
	end

end

orange_tree = Orange_Tree.new

51.times do
	orange_tree.one_year_passes
end

puts orange_tree.height
puts orange_tree.age
puts orange_tree.oranges
orange_tree.pick_an_orange
puts orange_tree.oranges