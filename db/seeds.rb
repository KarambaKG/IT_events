# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Organizer.create!(name: 'GoogleOrg', description: 'Hi, I am from Google!')
Organizer.create!(name: 'DockerOrg', description: 'Hi, I want teach you Docker container!')

Region.create!(name: 'Амурская область')
Region.create!(name: 'Алтайский край')

image1 = File.open(Rails.root + 'app/assets/images/ок.png')
image2 = File.open(Rails.root + 'app/assets/images/фейсбук.png')

Event.create!(name: 'Google in Amur!', description: 'Лучшее событие Амура! Google и его возможности!',
              city: 'Белогорск', location: 'Ул. Спортивная 10',
              date_and_time: Time.parse('2016-08-20 13:30'),
              external_link: 'blive.kg', organizer_id: 1, region_id: 1, avatar: image1)

Event.create!(name: 'Google in KB!', description: 'Лучшее событие KB! Google и его возможности!',
              city: 'Карабалта', location: 'Ул. Спортивная 10',
              date_and_time: Time.parse('2016-08-20 13:30'),
              external_link: 'blive.kg', organizer_id: 1, region_id: 1, avatar: image1)

Event.create!(name: 'Docker in Altai!', description: 'Лучшее событие Алтая! Docker и его возможности!',
              city: 'Барнаул', location: 'Ул. Коммунистическая 22',
              date_and_time: Time.parse('2017-12-31 12:00'),
              external_link: 'namba.kg', organizer_id: 2, region_id: 2, avatar: image2)
