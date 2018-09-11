# Exercise - Mine Sweeper

![game](resources/sweeper.gif)

You have the task of creating the classic [mine sweeper](https://itunes.apple.com/us/app/minesweeper-deluxe/id657011614?mt=12) game in your terminal.

# Commit 0 - Research

### Nessted Arrays and Nested Hashs

Go back to the Easter Egg Exercise for review.

### Animation

##### Basics

- Animations are a [series of pictures](https://www.youtube.com/watch?v=V8A4qudmsX0&feature=youtu.be) 
- You can see an [animation example in ruby](examples/animating_example.rb)

We are not going to worry about framerates and constant movement but it is important to get the idea that we are producing a series of images that make the game look like it's one game board with elements moving on it. In reality, we are removing one image and drawing a brand new image to take its place.

##### In Code

Two very important methods

- update method
  - changes the state of the application's data (what is visible, where focus is, what message should be displayed, etc.)
- draw method
  - resets the screen so the next print appears to be in the same location, the small change will be percived as movement to the human eye.
  - displays the current state of data, like a snapshot
  - prints the data in a format that is user friendly, giving the user what they need to play each moment of the game.

Again, this is not constant movement - You do not need to worry about framerates.

# App

## Steps for each Commit

### A. Psuedocode

  This is a large project and it is very beneficial to break it down into smaller sections. It is up to you how detailed this needs to be for wach commit.

### B. Code

### C. Refactoring

  As you complete a large section of code or a single method and get it to run correctly, you should periodically take a moment to refactor before moving forward. As you app gets bigger it will become harder to move forward unless your code is clean.

## Commit 1 - Basic Game

Your application will
- draw an 8 x 8 grid of hidden values
- allow a user to select a square by typing in x, y coordniates
  - if the user selects a square that is a bomb, the game ends
  - if the user selects a square that is not a bomb it will display the number of bombs next to that square.
- If a user uncovers all the squares that are not bombs, they win!!

## Commit 2 - Marking Squares

- alternatively a user can mark a square
  - if they they think it is a bomb, they should be able to mark it with a character reminding them not to click on that one.
  - if they don't know if there is a bomb but think it is suspecious, they should be able to mark it with a character reminding to come back later in the game.
  - a user should not be able to click on a marked square

## Commit 3 - Check Surrounding Squares

- check surronding squares
  - a user can check all 9 squares at once. the one they've selected plus the eight surrounding that one. 