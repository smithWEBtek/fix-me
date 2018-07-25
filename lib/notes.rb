<% if dog.sex == 'M' %>
<td>male</td>
<% else %>
<td>female</td>
<% end %>


<td><%= gender(dog) %></td>
 


def puppies(dogs)
	dogs.count{|dog| dog.age <= 1}
end

		
<p>Puppy count from helper: <%= puppies(shelter.dogs) %></p>




<h1>Shelter Dogs:</h1>

<table>
  <tr>
    <th>Name</th>
    <th>Breed</th>
    <th>Age</th>
    <th>Sex</th>
    
  </tr>
<% Dog.shelter_dogs.each do |dog|%>
 
  <tr>
    <td><strong><%=link_to dog.name, dog_path(dog)%></strong></td>
    <td><%=dog.breed%></td>
    <td><%= dog.age%></td>
    <% if dog.sex == 'M' %>
    <td>male</td>
    <% else %>
    <td>female</td>
    <% end %>
     
    <td><button><a href="/dogs/<%=dog.id%>/adopt">Adopt Me!</a>
  </tr>
  </tr>
   
<% end %>
</table>