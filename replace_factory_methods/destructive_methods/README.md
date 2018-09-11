# Exercise - Destructive Methods

Almost everything in ruby is an object and every object has an id. This is how ruby knows which unique object it's looking at in any given situation.

When we refer to a method as "destructive" we mean that it changes the thing without changing the object id.

Even though it doesn't change the function of the method, there is a convention in ruby to end a destructive method with a `!` otherwise called a bang. You may see this as you look through ruby documention where there is a method and an accompying method that has the same name but ends with a bang (ex: [String#reverse](https://ruby-doc.org/core-2.5.1/String.html#method-i-reverse) and [String#reverse!](https://ruby-doc.org/core-2.5.1/String.html#method-i-reverse-21))

This challenge will have you build your own destructive methods.

# Commit 0 - Research

### Object Ids

Follow [this object id example](examples/object_id_example.rb). Copy sections into irb to see how they work.

read documentation on 
- [Ruby Docs - #object_id](https://ruby-doc.org/core-2.5.1/Object.html#method-i-object_id)
- Look at the #replace method, this is a different method for each class that uses it so look for the method on Array, String and Hash pages in Ruby Docs

# Commit 1 - Psuedocode

You are going to write a method that tranlates a series of words into a decoded word by returning the first letters of each word as a single string. You may know of this as an acrostic.

Example: 

```ruby
p acrostic_decoder("Does one, yodel on under resentment, when offsprings refuse kamp?")
```

This example should print "do your work"

Note: In our method, any punctuation denotes the seperation of words.

Write your input, output and steps to create your method.

# Commit 2 - Non-Destructive Solution

Write your solution for a non-destructive method.

# Commit 3 - Destructive Solution

Write a destructive version of your method.

Note: The runner code is commented out to check for the destructive method, add a bang and uncomment out the appropriate runner code.

