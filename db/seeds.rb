100.times do
  User.create(name: Faker::Internet.user_name, email: Faker::Internet.email, password: "123456", password_confirmation: "123456", description: Faker::Lorem.paragraph )
end

100.times do
  Question.create(title: Faker::Book.title, question_text: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 100),)
end

100.times do
  Answer.create(answer_text: Faker::Lorem.paragraph, user_id: Faker::Number.between(1, 200), question_id: Faker::Number.between(1, 100))
end

100.times do
  Questionvote.create(upvote: Faker::Number.between(0, 1), downvote: Faker::Number.between(0, 1), question_id: Faker::Number.between(1, 100), user_id: Faker::Number.between(1,200))
end

100.times do
  Answervote.create(upvote: Faker::Number.between(0, 1), downvote: Faker::Number.between(0, 1), answer_id: Faker::Number.between(1, 100), user_id: Faker::Number.between(1,200))
end


#timestamp
