# user = User.create(username: 'test3', email: 'test3@test.com', password: 'Test33')
# user.image.attach(io: File.open('./public/photos/images.jpg'), filename: 'images.jpg', content_type: 'application/jpg')
# user.save!
# user.image.attached?
item = Item.create(name: 'speaker', description: 'jbl', price: 250, available: true, user_id: 2)
item.image.attach(io: File.open('./public/photos/images.jpg'), filename: 'images.jpg', content_type: 'application/jpg')
