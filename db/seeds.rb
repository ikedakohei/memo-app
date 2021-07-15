5.times do
  Memo.create(
    title: Faker::Lorem.word,
    description: Faker::Lorem.sentence
  )
end
