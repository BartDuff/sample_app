require 'faker'

namespace :db do
    desc "Peupler la base de données"
    task :populate => :environment do
        Rake::Task['db:reset'].invoke
        User.create!(:name => "Utilisateur exemple",
                     :email => "example@railstutorial.org",
                     :password => "foobar",
                     :password_confirmation => "foobar")
                     99.times do |n|
                         name  = Faker::Name.name
                         email = "example-#{n+1}@railstutorial.org"
                         password  = "motdepasse"
                         User.create!(:name => name,
                                      :email => email,
                                      :password => password,
                                      :password_confirmation => password)
                        end
    end
end