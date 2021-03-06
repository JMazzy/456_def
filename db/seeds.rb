# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

100.times do |num|
  Employee.create(first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email)
end

10.times do |team_num|
  Team.create(  name: Faker::Hacker.noun,
                owner_id: Employee.all.sample.id)
end

10.times do |report_num|
  ProgressReport.create(  body: Faker::Hacker.say_something_smart,
                          author_id: Employee.all.sample.id,
                          team_id: Team.all.sample.id)
end

100.times do |team_member_num|
  TeamMember.create(  team_id: Team.all.sample.id,
                      member_id: Employee.all.sample.id)
end
