module FestivalHelper
  extend self

  def festival_content
    [{
      title: "Home",
      link: "Home",
      content: <<-CONTENT
New Earth Nation will link coordinated, annual, 5-day Festivals as a unified global focus event from the selected New Earth locations across the globe.

Art, music, theatre, dance, food, ceremony, new sciences, healing and wisdom will manifest blueprints for a sustainable world – becoming a collective planetary dream for our New-Earth.

At each location, these global focus annual events will combine a Congress, an Exposition and a Festival. They will become a worldwide beacon for people and communities across the globe coming together to dream a new dream: that of a world where abundance, healing, spiritual upliftment, beauty and conscious development lead the way.
      CONTENT
    },{
      title: "Facilities",
      link: "Facilities",
      content: <<-CONTENT
Primary facilities will include:

* Master congress hall
* Five pavilions
* Restaurants
* Latrines
* Common parts
* Production offices
* Media centre
* Clinic
* VIP lounge and canteen
* Meditation temple
* Juice bars and healthy fast food stalls

Festival tickets will be tiered into three categories - ranging from funky camping to 5-star luxury lotus domes.

During the Festivals as well as throughout the year - zero-footprint tent and teepee camp-sites will house budget visitors and tourists. The tented lodgings will be available for rental with revenues from these camps contributing toward the local community programs and initiatives.

The Festivals will realize many creative constructions and improvements to local infrastructure. The restaurants, stalls, cafes, pavilions, congress dome, lavatories, showers and creative lodgings will serve tourists and New Earth Institute students and guests throughout the year.
      CONTENT
    },{
      title: "Live Music & Theatre",
      link: "Live Music & Theatre",
      content: <<-CONTENT
Days 2 & 4 of the 5-day Festivals will host a line up of popular international and domestic bands.

Bands will play from sunset to midnight then relay on to guest DJ’s who will spin to the dance-floor til sunrise.

New Earth Festival music will be produced into a concept album each year and released on the New Earth label and virally on the web, becoming a tool for promoting the sound and the atmosphere of the annual Festivals to an international audience.

Leading classical musicians and theatrical performers will grace the stage on day 3 of the Festivals.
      CONTENT
    },{
      title: "The Pavilions",
      link: "The Pavilions",
      content: <<-CONTENT
Special guests will be invited to address audiences at each of the five pavilions. Leaders in their particular fields, they will address a broad range of topics from spirituality & consciousness and artistic expression to science & technology and health & wellness.

#### Water Pavilion 

Dedicated to human and planetary wellness. Housing remediation technologies and ecological solutions for the environment, and showcase healing arts, traditional therapies & remedies to the world.

#### Fire Pavilion 

Dedicated to breakthrough technologies. An exciting and explosive exposition of creative arts, dance and theatre, ceremonial traditions, indigenous customs and cultural heritage.

#### Earth Pavilion 

Dedicated to planetary ecological awareness & sustainable living, farming, permaculture, raw-food & healthy eating, eco-housing, bio-architecture and new-earth economics.

#### Ether Pavilion 

Dedicated to spirituality, human consciousness, meditation, esoteric disciplines & sacred arts, incorporating workshops facilitated by healers, visionaries, inspirational speakers and wisdom-keepers.

#### Air Pavilion 

Dedicated to wisdom, education, beauty, harmonious living and transmission of noble values, incorporating workshops, seminars and tutorials which will focus on practical methods and templates for manifesting new-earth ideals.
      CONTENT
    },{
      title: "Catalysing Communities",
      link: "Catalysing Communities",
      content: <<-CONTENT
Every year hundreds of millions of dollars are spent globally on festival infrastructure, and at the end of each festival, that infrastructure is removed. All of the time, energy and resources which go in to manifesting festivals is wasted. Currently most festivals serve as modern day exemplars of unsustainability.

New Earth Festivals remedy this situation. Aside from the coordinated annual global focus events which utilise the infrastructure of New Earth Retreats & Institutes, New Earth Festivals are purposed as a catalyst for New Earth Communities. 

A roaming festival travels between new venues, creating the infrastructure for its one-off festival around the requirements of New Earth Communities based upon a set of established turnkey templates. Almost two thirds of the cost of establishing a New Earth Community is in the infrastructural elements, with only one third for the actual homes themselves, so by utilising New Earth Festivals as a catalyst for communities a vast amount of the resource requirement to create communities disappears. Not to mention the zero waste element of the festival itself!

Additionally the collective energy of 20,000 people can assist in establishing operational elements of the community, such as permaculture gardens, during the course of the event. And at the end of the festival a core group of people remain behind to populate and evolve the community. 
      CONTENT
#     },{
#       title: "Presentation",
#       link: "Presentation",
#       content: <<-CONTENT
# [Download the Presentation](/files/new-earth-presentation.pdf)
#       CONTENT
    }]
  end
end


# include FestivalHelper
# festival_content.map do |content|
#   pc = PageContent.create(section: "festival", title: content[:title], link: content[:link], content: content[:content])
# end
