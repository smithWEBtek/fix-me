module ApplicationHelper

	def gender(dog)
    if dog.sex == 'M'
      'Male'
    else
    	'Female'
    end
 	end

	def puppies(dogs)
		dogs.count{|dog| dog.age <= 1}
	end

	def shelter_dogs
		Dog.all.select{|dog| !dog.owner}
	end

end
