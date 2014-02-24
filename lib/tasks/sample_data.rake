namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Leopoldo Taravilse",
                         email: "leopoldo@avalancha.com",
                         password: "password",
                         password_confirmation: "password",
                         admin: true)
    9.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
  end
end