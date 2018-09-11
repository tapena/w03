# Write the solutions to each problem here!

#1)
numbers = [1, 2, 4, 2]
even_numbers = []
numbers.each do |number|
  if number % 2 == 0
    even_numbers << number
  end
end
p even_numbers

p numbers.select { |num| num.even? }

#2)
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

p movies[0][:rating]<4

p movies.select { |movie|  movie[:rating] < 4.0 }

#3)
movies = [
  {id: 1, title: "Die Hard", rating: 4.0},
  {id: 2, title: "Bad Boys", rating: 5.0},
  {id: 3, title: "The Chamber", rating: 3.0},
  {id: 4, title: "Fracture", rating: 2.0}
]

movie_info = movies.select { |movie| movie[:title].downcase.include? "b" }
movie_info.map!{ |movie| movie[:id]  }

#4)
def palindrome(string)
 front_index = 0
 rear_index = string.length-front_index-1
  while front_index < string.length

    if string[front_index] == string[rear_index]
      ans = true
    else
      ans = false
    end
     front_index += 1
     rear_index -= 1
  end
  ans
end

p palindrome("racecar")

#5)
def split_array(array, integer)
new_array = []
  while array.length > 0
    new_array << array.shift(integer)
  end
  new_array
end

p split_array([1,2,3,4,5], 3)
