# Exercise - Who Wants To Be A Millionaire?

THIS IS A 2 DAY PROJECT!!

The game show has been around since 1998. A player must go through a ladder of multiple choice questions to win the grand prize... "ONE MILLION DOLLARS!!". That's right, you will win a string with those rewarding words in it printed right to your terminal.

Here's the breakdown of the game.

1. Start the game and enter your name
2. The player sees the list of "reward levels" and they can accept the $100 question to start.
3. The player sees the question and 4 possible answers, only one answer is correct.
4. The player presses A, B, C, or D to answer the question. That answer is marked as selected.
  - 4 a. The player then has to confirm, "Is that your Final Answer?" answering "Y" for yes or selecting a different answer. They can keep clicking on different selections until they confirm the final answer.
  - we will hold off on life lines until the bonus.
5. When the correct answer is selected and they confirm, a success message appears and the reward from that question is added to their total. The player can click any button to go back to the "reward levels" screen. The next level of question is marked and the player is asked if they want to continue on or walk away with their current rewards.
  - 5 a. if they choose to walk away, they will see a congradulations page telling them how much money they bring home and asks if they want another game.
  - 5 b. if they choose to accept the next level question, they go back to step 3 and repeat the process.
6. If a player confirms incorrectly, they will see a page telling them the correct answer and a message of "thanks for playing but you go home with $0", then asks them if they wish to play again.
7. If a player answers correctly all the way up to the Million dollar question, they get a special page that shows they won a million dollars and go home a winner.

# Commit 0 - Research

### MVC without Rails

MVC is a design pattern used in rails by convention. When you are building other applications from scratch you can configure according to what best suits the app, however you still want a strong structure to keep your code organized. In this exercise we are going to use the MVC pattern on a non-rails application and build it from scratch.

#### MVC

- `M` - Model, The code that stores, structures and allows access to the "Data".
- `V` - View, The code that "interacts with the user", displaying messages and information as well as retrives input fromt the user for the application to use.
- `C` - Controller, The code that manages the "flow of logic", usually pulling together the Models and Views to produce the desired functionality at a given time.

You can have multiple of each file type. All model files should be in the models folder, same for controllers and views which should be in their corresponding folders. You can run a main controller method in the `runner.rb` file, running this one file starts the program.

### Gemfile

What does it take to add a Gemfile? No magic, just four easy steps...

1. Create a new file called `Gemfile` in your application's root folder, in this case the `solution` folder
2. Add the first line `source 'https://rubygems.org'`
3. Add the gem
4. In the root folder, run `bundle install` (creating a `Gemfile.lock`)

Try adding a coloring gem

- https://github.com/fazibear/colorize
- https://github.com/janlelis/paint
- https://github.com/sickill/rainbow

This makes sure if someone else downloaded your game app, they would easily have all the required gems downloaded with the correct version.

### JSON local File

You are not going to have a database to store data. Instead, you can store questions and anwsers in a local json file. 

1. Include the `json` gem in your gemfile and bundle
2. Write to a json file. [Run this example to write](examples/write_to_json.rb) (See that a new json file has appeared)
3. Read from a json file. [Run this example to read](examples/read_from_json.rb)

Review [this blog](https://hackhands.com/ruby-read-json-file-hash/) for a closer explination.

### Sleep

The `sleep` method allows you to add a pause to your application. Run the following code for an example.

```ruby
puts "Everything is coming together nicely"
puts "Now let's play the waiting game"
sleep(2.0) # pauses 2 seconds
puts "..."
sleep(0.5) # pauses a half of a second
puts "ugh, The waiting game sucks"
puts "Let's play Hungry-Hungry Hippos"
```

# Commit 1 - Psuedocode

1. Take 10 minutes to write down the features that you want to include in your app, this is probably going to be similiar to the breakdown of the game above.
2. Take another 20 - 30 minutes to write down a series of events or "flow of logic" to your app. This should include a list of methods for views and methods from models and their generic functionality. You can simultaneously write the order they should be called in the controller. 

Note: You will create a JSON file that holds the questions and their possible answers for a game. (don't randomize the questions at first, everyone will play the same progression of 15 questions to start)

# Commit 2 - Initial Solution

Build your application in the `millionaire_solution` folder. There is already a skeleton setup of

- controllers folder (for your ruby controller files)
- models folder      (for your model ruby files)
- views folder       (for your view ruby files)
- Gemfile            (to add gems to your app)

Create the files, classes and methods in the appropriate folders to complete a functional app following the MVC design pattern. Use the `require` or `require_relative` to access code from other local files and gems on a ruby file.

# Commit 3 - Write Runner Code in Runner File

Write runner code in the `runner.rb` file. The runner file should require all necassary files and call the method to start application. In this application the entire runner code should be the one line below.

```ruby
GameController.new.run
```

# Commit 4 - Refactor

Assess any methods that could use a refactoring. Identify which ones are worth your time and which ones are clean enough. Then refactor at least 2 or 3 methods.

# Bonus

If the player is unsure which answer to give then they are given 3 life lines, one of each for the entire game. Note: for each life line, you may need to add information to the json file containing the questions and answers.

Lifeline 1: "50/50", this removes 2 incorrect chioces
Lifeline 2: "phone a friend", You will automate this. The game displays a message from a friend that is right 90% of the time, otherwise it's a random other answer.

# Bonus 2

Lifeline 3: "ask the audience", You will automate this. Track the answers that other people have given for each question. As someone answers each question, you will update the JSON file to say how many times each answer was picked. When someone picks "ask the audience" it will retrieve the percentage of each available answer and give those percentages to the player to help make a decision.
