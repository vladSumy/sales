5.times do
  Article.create(title: Faker::App.name, text: Faker::App.name)
end