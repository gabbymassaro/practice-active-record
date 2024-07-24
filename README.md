# practice-active-record

**Learning Goals**

- Write Active Record Migrations
- Connect between tables using Active Record Associations
- Write class and instance methods using Active Record
- Use Active Record to query the database

**Introduction**

For this assignment, we'll be working with a conference management domain.

Conferences often have multiple sessions, speakers, and attendees. Let's make an app that keeps track of all these details for a conference.

We have three models: `Conference`, `Speaker`, and `Session`.

For our purposes, a `Conference` has many `Sessions`, a `Speaker` has many `Sessions`, and a `Session` belongs to a `Speaker` and to a `Conference`.

**Note:** You should draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

**Instructions**

To get started, run `bundle install` while inside this directory.

Build out all the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run `rspec` and you cannot run `learn test`. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

We've provided you with a tool that you can use to test your code. To use it, run `rake console` from the command line. This will start a pry session with your classes defined. You can test out the methods that you write here. You are also encouraged to use the `seeds.rb` file to create sample data to test your models and associations.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work over writing more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time at the end, refactor your code to adhere to best practices.

**Before you submit!** Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

**What You Already Have**

The starter code has migrations and models for the initial `Conference` and `Speaker` models, and seed data for some `Conferences` and `Speakers`. The schema currently looks like this:

`conferences` Table
| Column | Type |
|--------------|---------|
| name | String |
| year | Integer |

`speakers` Table
| Column | Type |
|--------------|---------|
| name | String |

You will need to create the migration for the `sessions` table using the attributes specified in the deliverables below.

**Deliverables**

Write the following methods in the classes in the files provided. Feel free to build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class methods.

Remember: Active Record gives your classes access to a lot of methods already! Keep in mind what methods Active Record gives you access to on each of your classes when you're approaching the deliverables below.

**Migrations**

Before working on the rest of the deliverables, you will need to create a migration for the `sessions` table.

- A `Session` belongs to a `Speaker`, and a `Session` also belongs to a `Conference`. In your migration, create any columns your `sessions` table will need to establish these relationships using the right foreign keys.
- The `sessions` table should also have:
  - A `title` column that stores a string.
  - A `duration` column that stores an integer (minutes).

After creating the `sessions` table using a migration, use the `seeds.rb` file to create instances of your `Session` class so you can test your code.

Once you've set up your `sessions` table, work on building out the following deliverables.

**Object Association Methods**

Use Active Record association macros and Active Record query methods where appropriate (i.e. `has_many`, `has_many through`, and `belongs_to`).

**Session**

- `Session#speaker`
  - returns the `Speaker` instance for this `Session`
- `Session#conference`
  - returns the `Conference` instance for this `Session`

**Conference**

- `Conference#sessions`
  - returns a collection of all the `sessions` for the `Conference`
- `Conference#speakers`
  - returns a collection of all the `speakers` who are giving sessions at the `Conference`

**Speaker**

- `Speaker#sessions`
  - returns a collection of all the `sessions` that the `Speaker` is giving
- `Speaker#conferences`
  - returns a collection of all the `conferences` that the `Speaker` is participating in

Use `rake console` and check that these methods work before proceeding. For example, you should be able to call `Speaker.first.conferences` and see a list of the conferences for the first speaker in the database based on your seed data; and `Session.first.speaker` should return the speaker for the first session in the database.

**Aggregate and Association Methods**

**Session**

- `Session#print_details`
  - should return a string formatted as follows: `{insert speaker's name} is giving a session titled "{insert session's title}" at {insert conference's name}`

**Conference**

- `Conference.add_session(speaker, title, duration)`
  - takes a `speaker` (an instance of the `Speaker` class), a `title` (string), and a `duration` (integer) as arguments, and creates a new `Session` instance associated with this conference and the given speaker
- `Conference#oldest_conference`
  - returns the `Conference` instance with the earliest year

**Speaker**

- `Speaker#gave_session?(title)`
  - accepts a `title` (string) and returns true if any of the sessions associated with the speaker has that title, otherwise returns false
- `Speaker#give_session_to(speaker, session)`
  - accepts a `Speaker` instance and a `Session` instance, changes the session's speaker to be the given speaker; your code should only make the change if the session belongs to the speaker who's giving it away
