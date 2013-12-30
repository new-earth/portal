# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include ExchangeHelper
exchange_content.map do |content|
  PageContent.create_with(link: content[:link], content: content[:content]).find_or_create_by(section: "exchange", title: content[:title])
end

include EnterNewEarthHelper
enter_new_earth_content.map do |content|
  PageContent.create_with(link: content[:link], content: content[:content]).find_or_create_by(section: "enter-new-earth", title: content[:title])
end

include FestivalHelper
festival_content.map do |content|
  PageContent.create_with(link: content[:link], content: content[:content]).find_or_create_by(section: "festival", title: content[:title])
end
