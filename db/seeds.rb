require 'faker'


USER_NUMBER = 2
ALL_WEAPONS_EXCEPT_POINGS = Weapon.all.map(&:id).drop(1)

1.upto(USER_NUMBER) do |i|
  # Creating a user, his ninja and giving him "Poings" + one another weapon
  # User creation => All password are 'rootroot'
  user = User.create(email: Faker::Internet.unique.email, password: 'rootroot')
  ninja = Ninja.create(name: Faker::DragonBall.character, user_id: user.id)
  ninja.weapons << Weapon.find(1)
  ninja.weapons << Weapon.find(ALL_WEAPONS_EXCEPT_POINGS.sample)
end