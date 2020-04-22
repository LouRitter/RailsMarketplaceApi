Product.delete_all
User.delete_all

3.times do 
    user = User.create! email: Faker::Internet.email, password: 'pass123'
    puts "Created a new user: #{user.email}"
    2.times do 
        product = Product.create!(
            title: Faker::Commerce.product_name,
            price: rand(1.00..100.00),
            published: true,
            user_id: user.id
        )
        puts "New Product: #{product.title} for #{product.price}"
    end
end