# Validations

Validation is the concept that we will not save data to the database if the data is invalid for any reason. While some validations seem unnecessary, there are many that are quite useful. Obviously, an email address should require an @ sign if we want to be able to email our users. Perhaps a password should be more than 1 character in length. Examples are endless!

#### 1. Back to the conference_app!
Inside your actualize directory:
``` bash
cd conference_app
subl .
```

#### 2. Make some validations for our `Speaker` model

What types of validations might we want on our `Speaker` model? Use the [rails validations docs](https://guides.rubyonrails.org/active_record_validations.html) as reference.

Add these validations to the Speaker model.

1. Make it so that a Speaker must have a first_name with a length of at least 2.
2. Make it so that a Speaker must have a last_name with a length of at least 2.
3. Make it so that a Speaker must have a unique email.
4. Make it so that a Speaker must have an age over 18.

#### 3. Checking the validations

Let's check it out in the rails console!

```bash
rails console 
```

Create a new invalid `Speaker` model using the “.new” method. Then see weather it's valid or not using the .invalid? method.

```ruby
> speaker = Speaker.new(first_name: "S", last_name: "J", email: "sallyj@gmail.com", age: 16, gender: "F")
> speaker.invalid?
```

Then, try saving the speaker to see the errors. It will error out, and then let's look at the errors that occured. 

```ruby
> speaker.save
> speaker.errors.full_messages
```

#### More Exercises

1. Add validations for your `Meeting` model. Choose validations that make sense to you!
2. Add an if / else condition to your Speaker controller `create` action and `update` action to deal with happy / sad paths
3. Add an if / else condition to your Meeting controller `create` action and `update` action to deal with happy / sad paths

#### Deliverable
Update your conference_app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `validations_solution.md` file and link your repository. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
