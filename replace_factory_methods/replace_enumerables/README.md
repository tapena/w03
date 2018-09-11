# Exercise - Replace Ruby Enumerables

Many times we rely on ruby's factory methods to get the job done quickly, however there are times that a method is not available. Maybe, it's a coding exercise that restricts you or the method available gets close but doesn't actually do what you need it to do. The easiest way to start is replicating the logic of pre-existing methods because you know exactly what they need to do. You are going to write your own enumberables today from scratch.

# Commit 0 - Research

### Extending Classes

You can add to or extend any class in ruby. Somewhere in the base code that is running ruby, there is a class that defines `Integer`, `String` and `Hash`. You can add your own methods to those factory made ruby classes. see this [Extending Class Example](examples/extending_classes_example.rb)

### Self Keyword

The `self` keyword is special as it gives you access to the object a method is called on when called inside of a method. Note: it will change depending on the context where it is called. for now, just know how it works inside an instance method. see this [Self Keyword Example](examples/self_keyword_example.rb)

### Yield Keyword

The `yield` keyword is new way of giving dynamic function to your method. Perameters allow you to pass in data to your method to effect how the method will run. The `yield` keyword allows you to pass a block of logic into your method. see this [Yield Keyword Example](examples/yield_keyword_example.rb)

### Enumerables

Enumerable methods typically loop through a list of data (aka. Arrays or Hashs) and most of the time take in a block of how to interact with that data as it loops through.

Research the [Enumerable Mixin Here](http://ruby-doc.org/core-2.4.0/Enumerable.html) if you are unfamiliar with it's methods.

<br>

# Psuedocode

You will write your own `another_reject`, `another_find` and `another_map` methods.

> You can not use the `each` method, but you can use the `another_each` method

### Rules

- use the `another_each` method or the self keyword to create your enumerable method
- You can not use another factory made enumerable to write your code (example: you can not use the `reject` or `select` methods to create `another_reject`)
 

#### 1 - another_reject

- Duplicates what the `#reject` method does. do not use `#reject` ([See documentation](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-reject))
- Returns an array for all elements of enum for which the given block returns false.

#### 2 - another_find

- Duplicates what the `#find` method does. do not use `#find` ([See documentation](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-find))
- Returns the first element for which block is not false. if no element meets the criteria in the block #another_find will return nil

#### 3 - another_map

- Duplicates what the `#map` method does. do not use `#map` ([See documentation](http://ruby-doc.org/core-2.4.0/Enumerable.html#method-i-map))
- Returns a new array with the results of running block once for every element in the original array

<br>

# Solution

The runner code is already written for you.

After writing your psuedocode, implement your method.


# Bonus

- Try to add other enumerable methods such as `another_max`, `another_sum` or `another_to_h`
- After the `replace_destructive` exercise, Make a destructive enumerable (check Array methods for original methods) such as `another_map!`, `another_select!` or `another_reject!`

# Resources

