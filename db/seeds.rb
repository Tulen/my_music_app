# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Band.destroy_all
Album.destroy_all
Track.destroy_all

band1 = Band.create(name: 'Led Zepplin')
band2 = Band.create(name: 'The Beatles')



album1 = Album.create!(
  name: 'Led Zepplin IV',
  band_id: band1.id,
  year: 1971
)
album2 = Album.create!(
  name: 'Sgt. Pepper\'s Lonely Hearts Club Band',
  band_id: band2.id,
  year: 1967
)

track1 = Track.create!(
  name: 'Black Dog',
  album_id: album1.id,
  ord: 1,
  bonus: false,
  lyrics: 'Hey hey mama said the way you move...'
)

track2 = Track.create!(
  name: 'Rock and Roll',
  album_id: album1.id,
  ord: 2,
  bonus: false,
  lyrics: 'It\'s been a long time since...'
)
track3 = Track.create!(
  name: 'Lucy in the Sky with Diamonds',
  album_id: album2.id,
  ord: 1,
  bonus: false,
  lyrics: 'Picture yourself in a boat on a river...'
)
