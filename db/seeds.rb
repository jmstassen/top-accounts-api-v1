# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


a = Account.create(account_name: "Acme")
b = Account.create(account_name: "Bob's Upholstery")
c = Account.create(account_name: "Construction")
d = Account.create(account_name: "Dial-a-car")

a1 = Activity.create(activity_date: "2020-12-10", activity_type: "meeting", activity_name: "Intro with Jerry") 
a2 = Activity.create(activity_date: "2020-11-10", activity_type: "email", activity_name: "Follow up email")
a3 = Activity.create(activity_date: "2020-10-10", activity_type: "summary", activity_name: "Things are going well")
a4 = Activity.create(activity_date: "2021-02-10", activity_type: "summary", activity_name: "Needs work")
a5 = Activity.create(activity_date: "2021-03-10", activity_type: "summary", activity_name: "More resources needed")
a6 = Activity.create(activity_date: "2021-04-10", activity_type: "summary", activity_name: "Planning phase")
a7 = Activity.create(activity_date: "2021-05-10", activity_type: "objective", activity_name: "Bring in money")
a8 = Activity.create(activity_date: "2022-01-10", activity_type: "objective", activity_name: "Launch a project")
a9 = Activity.create(activity_date: "2022-02-10", activity_type: "objective", activity_name: "Hold an event")
a10 = Activity.create(activity_date: "2022-03-10", activity_type: "objective", activity_name: "Expand existing work")
a11 = Activity.create(activity_date: "2022-04-10", activity_type: "meeting", activity_name: "Steering committee meeting")
a12 = Activity.create(activity_date: "2022-05-10", activity_type: "event", activity_name: "Celebration")
a13 = Activity.create(activity_date: "2021-12-11", activity_type: "financial", activity_name: "$3K Revenue")
a14 = Activity.create(activity_date: "2021-12-12", activity_type: "meeting", activity_name: "Planning for event")
a15 = Activity.create(activity_date: "2021-12-13", activity_type: "event", activity_name: "Panel on topic")
a16 = Activity.create(activity_date: "2021-12-14", activity_type: "document", activity_name: "Master services agreement signed")
a17 = Activity.create(activity_date: "2021-11-11", activity_type: "financial", activity_name: "Paid $10K")
a18 = Activity.create(activity_date: "2021-11-10", activity_type: "email", activity_name: "Thanks for meeting")

a.activities = [a1, a2, a3, a7, a14]
b.activities = [a4, a8, a11, a15]
c.activities = [a5, a9, a12, a16, a18]
d.activities = [a6, a10, a13, a17]