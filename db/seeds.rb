# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning Database...."
User.destroy_all
ProfileSkill.destroy_all
Profile.destroy_all
Skill.destroy_all
##############################################################################

puts "Making Skills...."
skill1 = Skill.create(title: 'web development')
skill2 = Skill.create(title: 'computer science')
skill3 = Skill.create(title: 'business manager')
skill4 = Skill.create(title: 'excel')
skill5 = Skill.create(title: 'product manager')
skill6 = Skill.create(title: 'data scientist')
##############################################################################
puts "Making Users...."
user1 = User.create(email: 'jeff@jared.com', password: '123456')

user3 = User.create(email: 'brad@smith.com', password: '123456')

user5 = User.create(email: 'omer@geva.com', password: '123456')

user4 = User.create(email: 'david@sellam.com', password: '123456')

user6 = User.create(email: 'michael@jefferson.com', password: '123456')

user7 = User.create(email: 'alon@david.com', password: '123456')

user8 = User.create(email: 'ken@smith.com', password: '123456')

user9 = User.create(email: 'noah@schles.com', password: '123456')

##############################################################################
puts "Making Profiles...."
profile1 = Profile.create(user: user1, full_name: 'Jeff Jared', current_role: 'CEO', description: 'Have much experience leading small companies to increase their value', github_username: 'jeffjared', slack_username: 'jeffjared')
profile1.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574845946/Users/NoahNash_pco64j.jpg'
profile1.save
profile4 = Profile.create(user: user3, full_name: 'Omer Geva', current_role: 'Junior Developer', description: 'Just finished a coding bootcamp at Le Wagon', github_username: 'omergeva', slack_username: 'omergeva')
profile4.remote_photo_url = 'https://avatars1.githubusercontent.com/u/37403593?v=4'
profile4.save
profile5 = Profile.create(user: user4, full_name: 'David Sellam', current_role: 'Teacher at Le Wagon', description: 'The current Driver of the Le Wagon Tel Aviv coding school', github_username: 'davidsellam', slack_username: 'davidsellam')
profile5.remote_photo_url = 'https://avatars0.githubusercontent.com/u/54353429?v=4'
profile5.save
profile6 = Profile.create(user: user5, full_name: 'Michael Jefferson', current_role: 'CTO', description: 'Have a major in computer science and have 17 years of experience in the tech field', github_username: 'michaeljefferson', slack_username: 'michaeljefferson')
profile6.remote_photo_url = 'https://avatars2.githubusercontent.com/u/54051432?v=4'
profile6.save
profile7 = Profile.create(user: user6, full_name: 'Alon David', current_role: 'Senior Developer', description: 'Was a junior developer for 14 years and a senior developer for 4', github_username: 'alondavid', slack_username: 'alondavid')
profile7.remote_photo_url = 'https://res.cloudinary.com/dv2x1zvtu/image/upload/v1574676603/SpongeBob_stock_art_wxxisz.png'
profile7.save
profile8 = Profile.create(user: user7, full_name: 'Ken Smith', current_role: 'Business Strategist', description: 'Studied business at Bentley University', github_username: 'kensmith', slack_username: 'kensmith')
profile8.remote_photo_url = 'https://avatars2.githubusercontent.com/u/35640022?v=4'
profile8.save
profile9 = Profile.create(user: user8, full_name: 'Noah Schlesinger', current_role: 'Freelance Developer', description: 'Have worked with over 12 clients', github_username: 'noahschles123', slack_username: 'noahschles123')
profile9.remote_photo_url = 'https://avatars2.githubusercontent.com/u/35640022?v=4'
profile9.save
##############################################################################

puts "Making Profile Skills...."
profile_skill1 = ProfileSkill.create(experience: 3, profile: profile1, skill: skill1)
profile_skill4 = ProfileSkill.create(experience: 5, profile: profile4, skill: skill3)
profile_skill5 = ProfileSkill.create(experience: 3, profile: profile4, skill: skill4)
profile_skill6 = ProfileSkill.create(experience: 4, profile: profile5, skill: skill5)
profile_skill7 = ProfileSkill.create(experience: 3, profile: profile6, skill: skill6)
profile_skill8 = ProfileSkill.create(experience: 4, profile: profile7, skill: skill1)
profile_skill9 = ProfileSkill.create(experience: 5, profile: profile8, skill: skill2)

profile_skill10 = ProfileSkill.create(experience: 3, profile: profile1, skill: skill3)
profile_skill12 = ProfileSkill.create(experience: 5, profile: profile4, skill: skill5)
profile_skill13 = ProfileSkill.create(experience: 3, profile: profile4, skill: skill6)
profile_skill14 = ProfileSkill.create(experience: 4, profile: profile5, skill: skill1)
profile_skill15 = ProfileSkill.create(experience: 3, profile: profile6, skill: skill2)
profile_skill16 = ProfileSkill.create(experience: 4, profile: profile7, skill: skill3)
profile_skill17 = ProfileSkill.create(experience: 5, profile: profile1, skill: skill4)

profile_skill18 = ProfileSkill.create(experience: 3, profile: profile1, skill: skill5)
profile_skill20 = ProfileSkill.create(experience: 5, profile: profile4, skill: skill1)
profile_skill21 = ProfileSkill.create(experience: 3, profile: profile4, skill: skill2)
profile_skill22 = ProfileSkill.create(experience: 4, profile: profile5, skill: skill3)
profile_skill23 = ProfileSkill.create(experience: 3, profile: profile6, skill: skill4)
profile_skill24 = ProfileSkill.create(experience: 4, profile: profile7, skill: skill5)
profile_skill25 = ProfileSkill.create(experience: 5, profile: profile8, skill: skill6)
