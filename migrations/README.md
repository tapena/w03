# Migrations!

To add, remove, or change the columns of the tables in our database, we use migrations. Every time we create a new model (or any other type of migration) in Rails, a migration file is automatically created. We can find it inside the db/migrate folder.

Use your migration cheat-sheet to complete the following exercises.

#### 1. Back to the conference_app!
Inside your Actualize directory:
``` bash
cd conference_app
subl .
```

#### 2. Create a migration for the `Meeting` model
Our `Meeting` model should have a location attribute. 
``` bash
rails generate migration AddLocationToMeeting location:string
```
This shortcut migration should have produced a file in the `db/migrate` folder with the line:

```ruby
add_column :meetings, :location, :string
```

Now, let's add an attribute to check if the meeting is remote or in person. Add a `remote` attribute (string) to the `Meeting` model as well. 

#### 3. Making a change

Let's make the `remote` attribute a boolean (true/false) instead! Make the default for this attribute be false. Use your cheat sheet and find the syntax. When you think you've got it, run: 

```bash
rails db:migrate 
```

to apply the changes to the database.

#### 4. Use Insomnia to create a new Meeting model

This will require you to update your Meetings controller and the views with the new attributes.


#### 5. Use Insomnia to update an existing Meeting model

Again, you'll need to make changes to your controller! Make sure you've successfully done it by checking your rails console or Postico.


#### More Exercises

1. Create a migration to add a gender attribute and an age attribute to the `Speaker` model.
2. Update your Speaker controller to include the new attributes in the create/update actions, as well as the views. 
3. If you didn't make age an integer (gotcha!), make a migration to change it's datatype. 


#### Deliverable
Update your conference_app repository on github by doing a git add, commit, and push to the master branch.

Then, go to the `migrations_solution.md` file and link your repository. 

Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
