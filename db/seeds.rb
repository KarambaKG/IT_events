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

Event.create!(name: 'Docker in Altai Barnaul!', description: 'Лучшее событие Алтая! Docker и его возможности!',
              city: 'Барнаул', location: 'Ул. Коммунистическая 22',
              date_and_time: Time.parse('2017-12-31 12:00'),
              external_link: 'namba.kg', organizer_id: 2, region_id: 2, avatar: image2)

Event.create!(name: 'Docker in Altai Orsha!', description: 'Лучшее событие Алтая! Docker и его возможности!',
              city: 'Орша', location: 'Ул. Коммунистическая 22',
              date_and_time: Time.parse('2017-12-20 12:00'),
              external_link: 'namba.kg', organizer_id: 2, region_id: 2, avatar: image2)
