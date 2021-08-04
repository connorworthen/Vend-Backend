# user = User.create(username: 'cworthen', email: 'connorworthen@icloud.com', password: 'Test123')
# user.image.attach(io: File.open('./public/photos/images.jpg'), filename: 'images.jpg', content_type: 'application/jpg')
# user.save!
# user.image.attached?
item = Item.create(name: 'computer', description: 'macbook pro', price: 1000, user_id: 2)
item.image.attach(io: File.open('./public/photos/images.jpg'), filename: 'images.jpg', content_type: 'application/jpg')
item.save!
item.image.attached?