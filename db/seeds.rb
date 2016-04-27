# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Rails.env.development?
  Book.find_or_create_by(title: 'How to play guitar') do |book|
    book.description = 'Learn to play guitar in 24 hours'
  end
  Book.find_or_create_by(title: 'How to be a good developer') do |book|
    book.description = 'What you need to know before your friends start envying you'
  end
  Book.find_or_create_by(title: 'How to live in India') do |book|
    book.description = 'Things for foreighers to know before entering India'
  end
  Book.find_or_create_by(title: 'Photography') do |book|
    book.description = 'The ins and outs of photography, to the point'
  end

  demo_book = Book.find_or_create_by(title: 'Demo Book')
  (1..10).each do |i|
    chapter = demo_book.chapters.find_or_create_by(title: "Chapter #{i}")
    (1..5).each do |j|
      section = chapter.sections.find_or_create_by(title: "Section #{i}.#{j}")
      section.content = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
      section.save!
    end
  end
end
