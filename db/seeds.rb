# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "Destroy all"
Bookmark.destroy_all
Movie.destroy_all
List.destroy_all

puts "Movies"
movie1 = Movie.create(
  title: "Avengers: Endgame",
  overview: "After the devastating events of Avengers: Infinity War, the Avengers assemble once more to reverse Thanos' actions and restore balance to the universe.",
  poster_url: "avengers_endgame.jpg",
  rating: 3
)

movie2 = Movie.create(
  title: "Inception",
  overview: "A thief who enters the dreams of others to steal secrets from their subconscious is given the task of planting an idea into the mind of a CEO.",
  poster_url: "inception.jpg",
  rating: 8
)

movie3 = Movie.create(
  title: "The Dark Knight",
  overview: "When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham, forcing Batman to come out of retirement.",
  poster_url: "the_dark_knigh.jpg",
  rating: 10
)

movie4 = Movie.create(
  title: "Forrest Gump",
  overview: "The presidencies of Kennedy and Johnson, the events of Vietnam, the Watergate scandal, and other historical events unfold from the perspective of an Alabama man with an extraordinary life.",
  poster_url: "forrest_gump.jpg",
  rating: 7
)

movie5 = Movie.create(
  title: "The Matrix",
  overview: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
  poster_url: "the_matrix.jpg",
  rating: 5
)

movie6 = Movie.create(
  title: "Gladiator",
  overview: "A betrayed Roman general seeks revenge against the corrupt emperor who murdered his family and sent him into slavery.",
  poster_url: "gladiator.jpg",
  rating: 9
)

movie7 = Movie.create(
  title: "The Lion King",
  overview: "Lion prince Simba and his father are targeted by his evil uncle, who wants to ascend the throne himself.",
  poster_url: "lion_king.jpg",
  rating: 4
)

movie8 = Movie.create(
  title: "Spider-Man: No Way Home",
  overview: "Peter Parker seeks Doctor Strange's help to make his identity as Spider-Man a secret again, but when the spell goes wrong, villains from other universes begin to appear.",
  poster_url: "spider_man.jpg",
  rating: 8
)
puts "Lists"
# Création des listes
list1 = List.create(name: "Top Action")
list2 = List.create(name: "Sci-Fi")
list3 = List.create(name: "Family")
list4 = List.create(name: "Must-See")
list5 = List.create(name: "Superhero")
list6 = List.create(name: "Inspirational")
list7 = List.create(name: "Horror")
puts "Bookmarks"
# Création des bookmarks (associant les films aux listes avec des commentaires)
Bookmark.create(movie_id: movie1.id, list_id: list1.id, comment: "A thrilling finale to the Infinity Saga. Epic battles and emotional moments!")
Bookmark.create(movie: movie2, list: list2, comment: "A mind-bending masterpiece with incredible visual effects and a gripping story.")
Bookmark.create(movie: movie3, list: list1, comment: "The ultimate superhero movie, with an unforgettable performance by Heath Ledger as the Joker.")
Bookmark.create(movie: movie4, list: list6, comment: "An inspirational story that shows the power of perseverance through life's hardships.")
Bookmark.create(movie: movie5, list: list2, comment: "A revolutionary film that explores the nature of reality in a thrilling sci-fi adventure.")
Bookmark.create(movie: movie6, list: list1, comment: "A powerful story of revenge and honor set in ancient Rome, with amazing action sequences.")
Bookmark.create(movie: movie7, list: list3, comment: "A heartwarming story that will leave you in tears. A timeless Disney classic.")
Bookmark.create(movie: movie8, list: list5, comment: "An exciting and fun superhero adventure with Spider-Man facing villains from other dimensions.")
Bookmark.create(movie: movie1, list: list5, comment: "The ultimate superhero crossover event with amazing action and emotional moments.")
Bookmark.create(movie: movie2, list: list4, comment: "A must-see film that will keep you thinking long after the credits roll.")
Bookmark.create(movie: movie3, list: list4, comment: "A film that defines the superhero genre. A perfect combination of action, drama, and psychology.")
Bookmark.create(movie: movie4, list: list6, comment: "A movie that proves how much one person can change the world with kindness and determination.")
Bookmark.create(movie: movie5, list: list2, comment: "A film that explores deep philosophical questions with a captivating plot and visual effects.")
Bookmark.create(movie: movie6, list: list3, comment: "A perfect mix of epic battle scenes and personal tragedy. A film that resonates deeply.")
Bookmark.create(movie: movie7, list: list5, comment: "A touching story of family, loss, and redemption, all set in the wilds of Africa.")
Bookmark.create(movie: movie8, list: list1, comment: "Spider-Man faces a multiverse disaster in this thrilling action-packed adventure.")

puts "Seed data created successfully!"
