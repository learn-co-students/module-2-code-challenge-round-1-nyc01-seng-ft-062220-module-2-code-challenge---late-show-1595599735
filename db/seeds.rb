# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Appearance.destroy_all
Guest.destroy_all
Episode.destroy_all


require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'daily_show_guests.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.first(100).each do |row|
  g = Guest.find_or_initialize_by(name: row['Raw_Guest_List'].split(',').first )
  g.occupation = row['GoogleKnowlege_Occupation']
  g.save
end

date = Date.parse('2015-09-08')

(1..40).each do |num|
  Episode.create(date: date, number: num)
  date = date.next
end

100.times do
  Appearance.create(rating: rand(1..5), guest: Guest.all.sample, episode: Episode.all.sample)
end
# a1 = Appearance.create(rating: 5, guest: Guest.all.sample, episode: Episode.all.sample)
# a2 = Appearance.create(rating: 4, guest: Guest.all.sample, episode: Episode.all.sample)
# a3 = Appearance.create(rating: 3, guest: Guest.all.sample, episode: Episode.all.sample)
# a4 = Appearance.create(rating: 2, guest: Guest.all.sample, episode: Episode.all.sample)
# a5 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)
# a6 = Appearance.create(rating: 5, guest: Guest.all.sample, episode: Episode.all.sample)
# a7 = Appearance.create(rating: 4, guest: Guest.all.sample, episode: Episode.all.sample)
# a8 = Appearance.create(rating: 3, guest: Guest.all.sample, episode: Episode.all.sample)
# a9 = Appearance.create(rating: 2, guest: Guest.all.sample, episode: Episode.all.sample)
# a10 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)
# a11 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)
# a12 = Appearance.create(rating: 5, guest: Guest.all.sample, episode: Episode.all.sample)
# a13 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)
# a14 = Appearance.create(rating: 3, guest: Guest.all.sample, episode: Episode.all.sample)
# a15 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)
# a16 = Appearance.create(rating: 2, guest: Guest.all.sample, episode: Episode.all.sample)
# a17 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)
# a18 = Appearance.create(rating: 5, guest: Guest.all.sample, episode: Episode.all.sample)
# a19 = Appearance.create(rating: 2, guest: Guest.all.sample, episode: Episode.all.sample)
# a20 = Appearance.create(rating: 1, guest: Guest.all.sample, episode: Episode.all.sample)