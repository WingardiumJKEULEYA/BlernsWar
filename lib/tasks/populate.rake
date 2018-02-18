namespace :populate do
  desc 'This task create all weapons for the game and then seed.'
  task init_game: :environment do
    Weapon.create(name: 'Poings', damage: 2, price: 0)
    Weapon.create(name: 'Baton', damage: 10, price: 100)
    Weapon.create(name: 'Nunchaku', damage: 25, price: 300)
    Weapon.create(name: 'Katana', damage: 50, price: 600)

    Rake::Task['db:seed'].invoke # seed users and ninjas + 2 weapons
  end

  desc 'Seed again'
  task reseed: :environment do
    Rake::Task['db:seed'].invoke
  end
end
