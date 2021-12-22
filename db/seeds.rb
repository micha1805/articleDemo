# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



n_articles = 30
n_comments_per_articles = 3

###################################################################
puts "create some articles"

n_articles.times do

	Article.create(
		title: Faker::Lorem.word,
		content: Faker::ChuckNorris.fact)

end

###################################################################
puts "create some comments for each articles"

Article.all.each do |article|

	n_comments_per_articles.times do
		Comment.create(author: Faker::Name.name, content: Faker::ChuckNorris.fact, article: article)
	end

end
