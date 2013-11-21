# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

developers = User.create( [ 
                            { first_name: 'Joe',
                              last_name: 'Black',
                              email: 'joe@spektrumtheory.com',
                              password_digest: BCrypt::Password.create('secret'),
                              country_iso: 'US' }
                          ] )
