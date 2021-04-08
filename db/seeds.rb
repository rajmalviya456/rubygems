30.times do
  Course.create!([{
    title: Faker::Educator.course,
    description: Faker::TvShows::GameOfThrones.quote
  }])
end
