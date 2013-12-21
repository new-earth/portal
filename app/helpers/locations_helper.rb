module LocationsHelper
  def urlify_link(link_text)
    link_text.parameterize
  end

  def locations_url_for(page_link, subpage_link=nil)
    page = urlify_link page_link
    subpage = urlify_link subpage_link if subpage_link

    url = "/locations/#{@subsection}/#{page}"
    url << "/#{subpage}" if subpage
    url
  end
    
  def locations_sections
    [{
      link: "communities",
      title: "New Earth Communities"
    },{
      link: "retreats",
      title: "New Earth Retreats"
    },{
      link: "participation",
      title: "Landowner Participation"
    },{
      link: "protection",
      title: "Protection of Land and Communities"
    },{
      link: "templates",
      title: "Turnkey Templates"
    }]
  end

  def locations_content
    {
      'communities' => locations_communities_content
    }    
  end

  def locations_communities_content
    [{
      link: "Blueprint",
      title: "New Earth Community Blueprint",
      content: <<-CONTENT,
New Earth Communities offer a dynamic and realistic path towards the most monumental reclamation project in the history of our species. As truly sovereign men and women, residents of new earth communities are invited to participate in a real-time experiment in conscious evolution; to push the boundaries of human expression and creativity, and explore new and innovative means of peaceful cooperation and harmonious living. 
 
The founding premise of each community is that each resident is free to spend their time doing what it is they love and what they are enthusiastic about - only when people are free to guide every aspect of their lives according to the resonance of their heart will a state of true inner and outer peace be realised. 
 
New Earth Residents enjoy a ground-breaking model for live, work and play which releases them from the obligations associated with normal real estate purchase: whilst also providing an environment and habitat which nurtures wellness, prosperity and spiritual upliftment...

### Benefits of a new earth residency

* homes and communities designed and built in alignment with sacred principles 
* built environments facilitating a return of the body/ mind/ spirit to its natural state 
* energy independence 
* full range of new earth technologies 
* optional cashless lifestyle 
* new earth institute resources 
* advanced Healing & Wellness facilities 
* Inspirational learning environments 
* locally grown organic foods 
* orgone protected infrastructure 
* structured-water supply 
* 100% eco waste management
* the protection of the Earth Sanctuary Trust 
* the full support of New Earth Nation and of a global network of sovereign individuals in exercising ones inherent sovereignty
* the full support of New Earth Nation in upholding ones inherent natural rights


### Residency, Food, Financing & Exchange

Residency (FAQ link inside)
  
All residents necessarily possess or develop a skill which is crucial to the functioning of a successful community - everyone has such a skill; whether you are 80 years old and able to care for the next generation of New Earthers, or 20 years old with nothing but the enthusiasm to learn and practice permaculture, healing, food preparation, or whatever it is that you love the most - there is something for everyone. 
 
Initially, communities roughly provide a 2:1 ratio of permanent residents who provide the conscious foundation for each community, and transient residents who provide the constant flow of new energy, skills and ideas to maintain a flow of creativity. 
 
As all residents are merely custodians of the earth (and of the Project) and users of its fruit, they have the opportunity, if they so choose, to move freely between different communities without the notion of individual ownership tying them to any specific property.


Blueprint Summary (centre) (FAQ link inside)


### Permanent Residency

Permanent Residents are those people and families who live full-time in one or more communities. They may either purchase or build a home in a New Earth Community, or the New Earth Trust may provide subsidies to enable potential permanent residents who could otherwise not afford to build a home in a New Earth Community to join the New Earth family - it is a cruel irony in the 'real-world' that all too often our most conscious and creative thinkers are disenfranchised from the mainstream because what they have to offer is not a recognized 'commodity'. And not being able to monetize their specialization or talent can relegate them to poverty and ignominy. This is a dysfunctional appreciation of humanity which the New Earth Project needfully redresses.
 

### Transient Residency

Transient residents are people who, whilst not being ready to fully plug in permanently to a New Earth Community, have nonetheless chosen to live within a community, initially for 1 month of each year. They are able to absorb themselves in the philosophy and wisdom of the communities and share that wisdom with the greater world, whilst also providing a constant flow of new energy, skills and ideas to maintain a flow of creativity. Transient residents may, in their own time, choose to join the community on a more permanent basis.

 
### Benefits of Residency

In addition to the obvious benefits of living in a conscious environment which supports a state of perpetual joy and abundance, all New Earth Residents benefit from: 
 
* homes and communities designed and built in alignment with the principles of sacred geometry and crystal spiral dynamics
* all built environments facilitating a return of the body/mind/spirit to its natural state
* full energy independence
* full access to new earth technologies
* zero-point economics modelling
* full access to New Earth Institute resources


### Food

Each New Earth Community employs Q-Permaculture as the foundation of their food production programs. These New Earth Community Farms operate as Organic Permaculture Cooperatives, serving as nationwide exemplars of traditional and permaculture farming and husbandry methods. In addition to servicing the needs of the Communities, Institutes and Retreats, the Farms maintain regional Organic Farmers Markets where organic producers from across the region are able to trade their produce. This Cooperative approach invites the regions non-organic farm operators to join the organic farming revolution, and invites all farmers to embrace these New Earth farming methodologies as the next generation of organic farming. The projects team of world-leading permaculture and agricultural specialists provide advice and assistance in managing these transitions.
 
Each Cooperative maintains an organic native variety seed bank which it makes available to the greater world, securing the future of native fruit, vegetable and plant species in all New Earth locations.
 
Raw is understood as the most beneficial way to consume food, retaining more nutrients and enhancing health & longevity. Whilst each community itself determines what communal eating facilities it incorporates, raw food & juice cafes serve as both the main eating areas of the community and their primary social hubs. The idea that we each must prepare our food individually, eating alone or in small groups within a walled homestead, is an outdated notion - whilst people and families are of course free to do so if they wish, the fact is that not everyone obtains great joy from the preparation of their food. Environments where those who do love to prepare food are able to do so for others, with love, enthusiasm, care and attention are far more conducive to a healthful lifestyle. New Earth Communities represent an opportunity to explore these and many more alternative lifestyle choices as they question all outdated modalities to consciously evolve the human condition.
 

### Financing (FAQ link inside)

It is crucial we remember that money does not build communities, people do. The New Earth Project's innovative design solutions and suite of advanced technologies result in a lower use of resources and faster build times. Any capital which is required to develop the communities is therefore relatively low.
 
Funds which are required to develop New Earth Communities, are obtained from three primary sources: 
 
* by permanent residents who possess the financial capacity to do so; 
* by the New Earth Trust on behalf of those permanent residents who do not possess the financial capacity to do so; and 
* by transient residents, whose residencies arise out of their contribution to a community or the network of communities generally.
 
Transient residencies are initially available for a flat-rate contribution of $10,000.00, regardless of location, which entitles the contributor (and their partner/family) to one month's use of a New Earth Community dome home every year for life. The residency is transferrable so should transient residents wish to join the community on a permanent basis, or should they wish to leave the community altogether, they are able to sell their interest back to the New Earth Trust at any time.
 

### Exchange (FAQ link inside)
 
The goal of the Communities is to transition, within a relatively short space of time, to a fully zero-point economy where no one charges their fellow human beings for their time or labour - everything is free. There is no impediment to this being implemented from the outset within each individual community. 
 
However until such time as the network of communities is sufficient in scope to allow this economic model to flourish in its entirety, it is necessary for the communities and their inhabitants to access some resources and services from the old world. New Earth Residents and the community as a whole are able to exchange their goods & services with New Earth Retreats and Institutes, in exchange for New Earth Sovereigns or in exchange for the old world resources and services which they require.
 
Residents have free, unlimited access to the HumaniSpheres New Earth Banking and Auction House facilities, where they can gift and receive items and where their New Earth Sovereigns can be used to obtain any goods & services they require. The HumaniSphere includes a currency exchanger should the need arise to obtain other currencies for whatever reason.

  
### Individual Residents

Dependant upon the consensus decision of the Residents of each New Earth Community, each Community will either:

* immediately exist within itself as a zeropoint community with each resident gifting energy freely without the need to keep count, or
* operate its own internal mutual credit system as a precursor to this where each resident has a New Earth Promissory account for use specifically within their own Community

### Community Groups

Each Community group will itself have: 

* a New Earth Promissory account which it will use to engage with other Communities as part of a global community mutual credit system, and
* a New Earth Sovereign account which it will use to: 
1.  give and receive goods & services to and from any and all other members/particiants of the project (i.e. retreats, partners & affiliates) or other party who has a New Earth Sovereign account, and
2.  facilitate dollar purchases for all goods & services which it cannot obtain through the global New Earth network, and
3.  pay for any transportation costs associated with accommodating exchanges between Community groups or any other incidental costs that the New Earth Promissory cannot facilitate.


### Learning

New Earth Learning Centers provide the foundational platform for the community educational environment. Whilst physically separate to the New Earth Institute, they are an integral part of it.
 
The uniqueness of the New Earth Learning Center environment lies in its intimate setting and self-guidance ethos – with only a small number of students per class, children and young adults are able to develop strong relationships with each other and with the outstanding network of world leading creative, intellectual and spiritual thinkers who teach at the centers. 
 
The centers are free platforms upon which a wealth of knowledge and insight can be presented, not bound to any specific direction or teachings. In addition to core teaching staff, teachers from all walks of life are invited to come and lecture at the centers for week long intervals and at the same time offer courses, retreats and lectures for the surrounding local community.
 
Students spend a large portion of their time working on projects which contribute to the center and the community. Projects vary between locations depending upon the environmental factors which influence the needs of the various centers and communities. Concurrently students have the opportunity to use their own capacities and potentials to integrate, implement and manifest in the external world, the new insight and learning they have acquired through being exposed to the various fields of holistic wisdom, arts and sciences at the Learning Centers.

Each New Earth Community contains such a Learning Center for the use of its inhabitants, although attendance is by no means compulsory. Additionally, each center contains a School of Light which operates an international visitor class where high school students from all over the world are able to relocate to a New Earth Community for one year to experience this alternative learning environment and community life.
 
The New Earth Learning Center campus curriculum comprises introductions and orientations in a multitude of vital subject matters whilst also allowing time for reflections, practice, cooperation and socialization – practices that are fundamental for a fulfilling life. Students are free to structure their own curricula to ensure continued enthusiasm in the learning environment. Subjects include but are in no way limited to: 
 
* Ecology
* Science & technology
* Language
* Mathematics
* Ethics
* Permaculture & ecological farming
* Eco-philosophy
* New-economics
* Healing & wellness
* Arts & crafts
* Meditation
* Natural design
* Indigenous wisdom
 
New Earth Learning Center short courses and seminars are offered regularly at the campus. These short courses also benefit from the wealth of additional knowledge and wisdom brought to the center by the many prominent visiting teachers/lecturers/mentors/facilitators who come to teach the one-year curriculum and permanent students.

 
### Wellness

The New Earth Community environment supports the maintenance of peak health through proper diet & nutrition, movement & exercise, conscious intent and conducive living environments. Organic food grown with the same conscious intent to heal; seeds which have been stored in biological capacitors before planting; structured, vortex treated water for drinking and food production; New Earth Architecture homes; EMF elimination technologies; the support of a world-class network of experts in human wellbeing; the embodiment of a joyous and playful attitude - these factors, and many more, serve to create such an environment.
 
Residents of New Earth Communities can also benefit from free use of the clinics and rejuvenation services provided by the network of New Earth Retreats. 
 

### Conscious Birthing and Dying

A seminal aspect of New Earth Communities is a conscious focus on the art of ‘birthing’ and ‘dying’. It is critical that we begin to integrate these seminal gateways of the human journey into our reality framework. The New Earth Project explores and facilitates the ‘art of living and dying’ and does so with a keen attitude. 
 
The conscious birthing and reception of souls into our world becomes our most urgent and focused art.
 
Thus, in the communities:
 
* the months leading up to conception become consciously lived.
* community resources are expended on the wellbeing of pregnant women. 
* every pregnant woman can eat well, feel joy and be inspired by beauty in an environment that supports them.   
* babies are given superior conditions to grow robust and resilient organs thanks to the optimal biochemistry and nutrients flowing in their mother’s blood. 
* the unbridled use of technological intervention is recognized as counterproductive and abusive.
* peace and privacy are embraced as the primary facilitators of easy childbirth. 
* the first fully conscious generation are birthed expanding creativity, empathy, flexibility, social intelligence and resilience into the marrow of the human family. 
* students of all ages learn about nature’s plan for a fulfilling primal period. 
 
Similarly, a dignified and peaceful death in an environment which is conducive to spiritual retreat and resonant with nature, supported by conscious loving carers, family and friends, - becomes the most aspirational tenet of society. 
 
Thus, in the communities:
 
* 'dying' becomes a conscious 'art'.
* 'death' is recognized as the mere transition which it is. 
* these transitions are welcomed consciously, without fear. 
* these transitions are marked by celebrations of life rather than undignified mourning.
* birthing and dying are recognized as the same joyous transition.
 
Each community necessarily incorporates integrated environments for birthing and dying into the fabric of each community, and makes these facilities available to the wider local community.
 

### Energy & Technology

New Earth Communities include cutting-edge technologies spanning the five fundamental  aspects of sustainable community development: (The list included here is not exhaustive)
 

Blueprint Summary (centre) (FAQ link inside)

#### Energy

Plasma and hydroxy power generators – rotary and propane platforms converted to run on distilled water and plasma. 
 
Quantum Field Generators - non-mechanical devices which harness energy directly from the quantum field.
 
Power Amplifiers - non-mechanical transformer based devices which deliver a ten-fold over unity power output which, when coupled with a power storage device, allows the device to become a self-powering zero-point power generator. 
 

#### Waste

Municipal waste & waste-water treatment system - a clean trash-to-energy-to-food system. MSW, or trash, is converted into a multitude of valuable commodities. includes separation for recyclables, bio-digestion, bio-composting, vermiculture, algae-culture, closed looped reduction of inorganics, clean generation of electric power, and capturing and cleaning gases and fuels. The products include three highly-productive, organic, fertile top- soil amendments, clean electricity, a superior fish food and livestock feed supplement, blue green algae (Spirulina and ChlorelIa), and distilled water. 
 

#### Water

Purification – new earth technologies incorporate a range of purification technologies that range from state-of-the-art water desalination, sterilization, bacteria and virus elimination systems to naturally occurring effective microorganisms and vermicultures. 
 
Re-structuring - new earth architecture incorporates water collection facilities which employ geometry, vortices and charged crystals to restructure water.
 
Vortex treatment - the imploder is a specially designed vortex nozzle, which energizes any water back to its natural state. Multiple experiments have shown vortex treated water to bring health and longevity to plant life, animals and humans alike. 
 

#### Food

Q-Permaculture - food and other agricultural products are produced using a hybrid of quantum technologies and permaculture principles. 
 
Hydroponics and aquaponics - redesigns of existing hydroponic and aquaponic systems, establishing new systems as part of an integrated permaculture strategy to achieve truly organic and natural hydroponic and aquaponic operations. 

 
#### Construction

Geo-polymer - an indigenous and sustainable alternative to portland cement. Geo-polymers possess far greater compressive and tensile strengths than portland cement, are fire-proof, water-proof, pest-proof and become stronger over time as they sequester co2 from the atmosphere for decades. They are also crystalline in nature and so can be imbued with energetic frequencies and electrical charge to enhance the effect of the New Earth architectural principles
 
Bamboo - this great traditional building material is being revived for modern construction requirements. It is the fastest growing wood on the planet, generates 35% more oxygen than any other tree and has a higher tensile strength by weight than any other wood. At the same time growing bamboo helps to create forests and retain rainwater, raising ground water levels. 
 
Binishells - using low air pressure to lift and shape thin reinforced shell structures, poured at ground level, binishells essentially use air as their form work. As well as being inherently green, binishells are fast, strong and flexible and can be made in an infinite variety of shapes.  
 
Local Building Methods - certain traditional building methods and techniques are themselves highly advanced. These local techniques are, where appropriate, incorporated into designs creating localized exemplars for the marriage of old and new. 
      CONTENT

      subnav: [{
        link: "Community FAQ",
        title: "Community FAQ",
        content: <<-CONTENT,
*What makes New Earth different from other community models?*

Unlike other community models, New Earth is not a community model at all. New Earth provides open and free spaces within which a sovereign human beings may unite with other sovereign human beings in real and virtual community environments. How each group chooses to cooperate and interact with each other is at the sole discretion of that group. The New Earth Team will provide guidance and wisdom where it is explicitly requested.

*What is a fractal community?*

Every aspect of the natural world manifests through a fractal pattern. Fractality describes an infinitely increasing and infinitely decreasing repetitive pattern which eminates from a ‘zeropoint’. A fractal community is a community template based on the principles of fractality.

*Why create New Earth Communities using 'sacred' geometry?*

‘Sacred’ geometry generally refers to the design principles, proportions and ratios which nature itself employs in the creation of all life. By mimicking nature in the design of man-made spaces, our living environments integrate and harmonise with the natural world around them and provide for the free flow of natural energies within them. 

*Which technology will be used by the New Earth Community?*

New Earth and its Institute is a platform for the dissemination of ALL aligned technologies across the five core aspects of community infrastructure – energy, water, waste, food and build. Details of which technologies will be employed in each community will be made available when each community is launched.

*When can I move to a New Earth Community?*

The first communities developed by the New Earth Trust are planned for release before the end of this year. They will take approximately 9 months to develop. 

*Are there installment plans available for the purchase of a residence in the community that I could start paying into today?*

Not yet, but we plan to make this facility available through the New Earth portal in the coming months.

*Will all residents be treated as equal (as some will have luxury domes)?*

The degree to which a resident is treated equally will be equal to the degree to which that resident does not diminish the majesty of their sovereign self through undisciplined use of their own thoughts, words and deeds. This is the way it has always been and it is time that we each embody this.

*Can I live between different New Earth Communities around the globe?*

Yes, when fully developed, the New Earth Portal will facilitate the movement and exchange of residents between communities in a flexible and cooperative manner.

*Can residents remodel their homes in the future in order to accommodate changing family needs (e.g. more children)?*

As sovereign inhabitants of a sovereign community, all matters relating to ongoing community development, planning, maintenance and function will be at the absolute discretion of that community. Some communities may require planning matters to be approved by the community, others may not. Each resident will be a part of the decision making process in determining how their community will operate.

*If I purchase a plot, can I build my own home as I choose, or will I have to have a New Earth designed home?*

There will be no restrictions imposed by New Earth in this regard. Certain communities may however choose to follow certain guidelines as to the type of buildings in the community, but this will be at the discretion of the community and it’s collective of sovereign inhabitants.

*Will I have free access to healthcare services and healing & wellness facilities available in the Retreats (and other services elsewhere)?*

New Earth Residents will have access to all facilities of all New Earth initiatives. No New Earth Resident will ever be denied necessities for want of payment. However permitting any individual or group of people to abuse resources or the goodwill of others is not a recipe for full spectrum sustainability. The degree to which all services are freely available (or instead provided at discounted rates in New Earth Promissories), will self-organise to reflect the degree to which individuals and community’s do themselves embody the principles of service to others. 

*What if people within the community need urgent medical care and have completely left behind the old world?*

We don’t do what if’s… we do consciousness in action! In time regional New Earth Healing Centres will be available to all New Earth Residents. However as sovereign New Earth Residents it is our collective responsibility to provide for our own needs or to evolve to a state in which we have none. If we need the security of medical support then we help create the platform to deliver it. And of course it’s never too late to return to an old world hospital and pay for medical care, but is that really the future you want to manifest for yourself?

*Why do some components of the Community Blueprint relate to different elemental focuses than the same components in the Generic Blueprint?*

New Earth Communities push the boundaries of exploration in a number of fundamental aspects of human activity and endeavor and therefore will address some of those fundamental aspects in a different manner than may apply generally to humankind at this time. 
        CONTENT
      }]
    },{
      link: "How to Join",
      title: "How to Join a New Earth Community",
      content: <<-CONTENT,
New Earth will be launching the first New Earth Communities during the first quarter of 2014.  To join a community it will be necessary to:

* Make a Declaration of Individual Sovereignty at the New Earth Portal
* Acquire New Earth Residency by either:

Purchasing a home in a New Earth Community developed by New Earth

Purchasing a plot in a New Earth Community developed by New Earth

Purchasing a Transient Residency in a New Earth Community developed by New Earth

Obtaining a Sovereign Advance from New Earth  

Gifting time and energy to New Earth Initiatives 

Confirming your status as a resident of an existing Community which has itself become a New Earth Community

Confirming your status as a resident of a New Earth Community which has been or is being developed by someone other than New Earth
      CONTENT
      subnav: [{
        link: "Purchasing a home",
        title: "Purchasing a home in a New Earth Community developed by New Earth",
        content: <<-CONTENT,
All New Earth Community homes will be made available through the New Earth portal’s Community Module. The processes & procedures for purchasing a New Earth Community home may be altered periodically.

Most initial communities being developed by New Earth allocate approximately 60% of the total number of community homes (or plots) for open market sale. Anyone who purchases such a home will obtain New Earth Residency.

### Purchase process for off-plan homes

* Select a location 
* Select a home
* Make a Reservation. Purchasers will be required to provide any necessary details, and pay a reservation fee. A reservation will secure a purchase for a period of 28 days. 
* Confirm acceptance of Terms and Conditions of Residency
* Confirm acceptance of the purchase agreement which will include all details relating to land & property ownership), the terms of which will be made available to purchasers prior to making a reservation.
* Pay first instalment of home cost by the date, or development stage, agreed to in to purchase agreement.
* Pay second instalment of home cost by the date, or development stage, agreed to in to purchase agreement.
* Pay third instalment of home cost (where applicable) by the date, or development stage, agreed to in to purchase agreement.
* Take up residency in your selected New Earth Community and move in to your new home.

### Purchase process for completed homes

* Select a location
* Select a home
* Make a Reservation. Purchasers will be required to provide any necessary details, and pay a reservation fee. A reservation will secure a purchase for a period of 28 days. 
* Confirm acceptance of Terms and Conditions of Residency
* Confirm acceptance of the purchase agreement which will include all details relating to land & property ownership), the terms of which will be made available to purchasers prior to making a reservation.
* Complete the purchase of the home by the date specified in the purchase agreement.
* Take up residency in your selected New Earth Community and move in to your new home.
        CONTENT
      },{
        link: "Purchasing a plot",
        title: "Purchasing a plot in a New Earth Community developed by New Earth",
        content: <<-CONTENT,
All New Earth Community plots will be made available through the New Earth portal’s Community Module. Anyone who purchases such a plot will obtain New Earth Residency.

Most initial communities being developed by New Earth allocate approximately 60% of the total number of community homes (or plots) for open market sale. 

The processes & procedures for purchasing a New Earth Community plot may be altered periodically. Not all New Earth Communities will facilitate plot sales, some may only provide for completed homes. 

Where plots are available, the plot price is inclusive of all infrastructure costs including but not limited to:

* hard & soft landscaping 
* electricity supplies
* water supplies
* communal facilities
* permaculture planning

Purchase process for plots

* Select a location
* Select a plot
* Make a Reservation. Purchasers will be required to provide any necessary details, and pay a reservation fee. A reservation will secure a purchase for a period of 28 days. 
* Confirm acceptance of Terms and Conditions of Residency
* Confirm acceptance of the purchase agreement which will include all details relating to land & property ownership), the terms of which will be made available to purchasers prior to making a reservation.
* Complete the purchase of the plot by the date specified in the purchase agreement.
* Build your own home (subject to the terms of the purchase agreement), or have a home built by New Earth Developments.
* Take up residency in your selected New Earth Community and move in to your new home.
        CONTENT
      },{
        link: "Purchasing a Transient Residency",
        title: "Purchasing a Transient Residency in a New Earth Community developed by New Earth",
        content: <<-CONTENT,
Transient Residency is an opportunity for anyone not yet ready to plug in permanently to a New Earth Community, to live in a New Earth Community, for a limited period of time each year. Transient Residents are able to absorb themselves in the philosophy and wisdom of the communities and share that wisdom with the greater world, whilst also providing a constant flow of new energy, skills and ideas to maintain a flow of creativity. Transient residents may, in their own time, choose to join the community on a more permanent basis. 

A Transient Residency is basically a time share (but a lot cheaper!) in a New Earth Community home, or bundle of Community homes. The purpose is to give people the opportunity to experience New Earth Community life before taking the plunge into Permanent Residency.

All opportunities to obtain Transient Residencies will be made available through the New Earth portal’s Community Module. The processes & procedures for purchasing a Transient Residency may be altered periodically.

Most initial communities being developed by New Earth allocate approximately 20% of the total number of community homes for use by Transient Residents. 

Purchase process for Transient Residencies

* Select a location 
* Select a home (where applicable)
* Make a Reservation. Purchasers will be required to provide any necessary details, and pay a reservation fee. A reservation will secure a purchase for a period of 28 days. 
* Confirm acceptance of Terms and Conditions of Residency
* Confirm acceptance of the purchase agreement which will include all details relating to land & property ownership), the terms of which will be made available to purchasers prior to making a reservation.
* Complete the purchase of the home by the date specified in the purchase agreement.
* Schedule your first stay in your selected New Earth Community.

Scheduling of Transient Resident visits

Once the first Communities are nearing completion, a Transient Residency scheduling facility will be added to the New Earth portal allowing Transient Residents to coordinate their stays with other Transient Residents in a cooperative fashion. The facility will seek to balance the scheduling preferences of all Transient Residents so that everyone is able to schedule their stay at a time which suits them.

Transient residencies will be issued in an amount not exceeding 48 weeks of each year for each home, allowing flexibility with bookings and ensuring that no one is left short.

Moving between Communities

Initially Transient Residencies will be location specific meaning that the purchase of a Transient Residency will entitle the purchaser to reside, for an allotted period of time each year, in the same community. As the network of communities grows, and the infrastructure supporting that network grows with it, it is intended that Transient Residents will be able to move around between communities, not tied to any specific location. At that time, those Transient Residents who have purchased an interest in a specific community home, or bundle of location specific community homes, will have the option to exchange their fixed interest in one property for a shared interest in the global bundle of Transient Residency allocated homes.
        CONTENT
      },{
        link: "Sovereign Advance",
        title: "Obtaining a Sovereign Advance from New Earth",
        content: <<-CONTENT,
Most initial communities being developed by New Earth allocate approximately 20% of the total number of community homes (or plots) for use by those who cannot otherwise afford to obtain residency. This percentage is planned to increase for subsequent communities as growing numbers of suppliers and contractors agree to receive full or part payment in New Earth currency.

One may obtain New Earth Residency under such circumstances in one of two ways:

* Gifting time and energy to New Earth Initiatives
* Obtaining a Sovereign Advance from New Earth 

A Sovereign Advance is akin to an interest free loan. The advance is issued in New Earth Promissories.

Process for obtaining a Sovereign Advance

To obtain a Sovereign Advance, applicants will need to: 

*  Be approved by the residents, or community council of the residents, of the community they wish to join. Approval will require applicants to: 
  a)  display that they have skills and talents which are specific to the needs of the particular community they wish to join
  b)  fulfil any other requirements laid forth by the particular community or New Earth 
* agree to serve the project in a specific manner to cause the repayment of the Advance.

Upon approval of a Sovereign Advance, a Promissory account with the New Earth Exchange will be opened for you if you do not already have one.

Using a Sovereign Advance to purchase a home or plot

Anyone using a Sovereign Advance to purchase a home or plot will need to follow the same process as any other purchaser. The payment section of the Community Sales Room will allow you to select ‘New Earth Promissories’ as the payment type where you simply enter your Promissory account details.

Repayment of a Sovereign Advance

Repayment of a Sovereign Advance is made by expending time and energy in service of specific New Earth Initiatives or activities, subject to the requirements of particular initiatives. Such initiatives and activities include but are not limited to:

* Service at a New Earth Retreat or Institute
* Service on the New Earth Administration
* Service on a New Earth Development

Please note that in the early stages of the Project, priority will be given for Sovereign Advances to those who have already gifted time and energy to New Earth Initiatives.

        CONTENT
      },{
        link: "Gifting time and energy",
        title: "Gifting time and energy to New Earth Initiatives",
        content: <<-CONTENT,
Most initial communities being developed by New Earth allocate approximately 20% of the total number of community homes (or plots) for use by those who cannot otherwise afford to obtain residency in a New Earth Community. This percentage is planned to increase for subsequent communities as growing numbers of suppliers and contractors agree to receive full or part payment in New Earth currency.

One may obtain New Earth Residency under such circumstances in one of two ways:
Obtaining a Sovereign Advance from the New Earth Trust 
Gifting time and energy to New Earth Initiatives

Members who serve the New Earth freely, expending time and energy in service of specific New Earth Initiatives or activities, will receive New Earth Promissories in acknowledgement of their commitment. Initiatives and activities which offer this opportunity, include but are not limited to:

* Certain New Earth Retreats and Institutes
* The New Earth Administration Team
* Certain New Earth Developments

New Earth Promissories may then be used to purchase residencies, homes or any products and services which become available through New Earth as they come online. Anyone who engages with New Earth in this way acknowledges that, in the early years, there may not be enough residencies, homes or other products or services available through this program for all members to ‘cash in’ their Promissories at will. Where demand is greater than supply, priority will be given in all instances to those who have the highest Promissory balances and have therefore contributed the greatest amount of time and energy to the Project.

In certain cases, and subject to capacity, members who engage in this way and wish to apply their New Earth Promissories to the purchase of a New Earth Community home, may be able to make up any shortfall in Promissories with a Sovereign Advance.

People who have already committed time and energy to New Earth in this way will be given priority for Sovereign Advances over those who have not.

Using New Earth Promissories to purchase a home or plot

Anyone using New Earth Promissories to purchase a home or plot will need to follow the same process as any other purchaser. The payment section of the Community Sales Room will allow you to select ‘New Earth Promissories’ as the payment type where you simply enter your Promissory account details.

If you would like to get involved in one of the activities listed above, please email jointheteam@trust.new-earth-nation.org 
        CONTENT
      },{
        link: "Confirming Residency: New Earth Developed",
        title: "Confirming your status as a resident of an existing Community which has itself become a New Earth Community",
        content: <<-CONTENT,
Confirming your status as a resident of an existing Community which has itself become a New Earth Community

Where an existing community has become a New Earth Community, its residents will automatically be New Earth Residents. However before we can offer you the benefits which come with New Earth Residency, we need to know who you are. To let us know of your residency in an existing community which has become a New Earth Community, please contact us at residency@trust.new-earth-nation.org
        CONTENT
      },{
        link: "Confirming Residency: Other",
        title: "Confirming your status as a resident of a New Earth Community developed by someone other than New Earth",
        content: <<-CONTENT,
Confirming your status as a resident of a New Earth Community which has been, or is being, developed by someone other than New Earth

Where a New Earth Community has been, or is being, developed by someone other than New Earth, its residents will automatically be New Earth Residents. However, unless the community developer is utilising the services of the New Earth Community Sales Room, we will not know who you are and will not be able to offer you the benefits which come with New Earth Residency. To let us know of your residency in such a New Earth Community, please contact us at residency@trust.new-earth-nation.org
        CONTENT
      },{
        link: "Residency FAQ",
        title: "Residency FAQ",
        content: <<-CONTENT,
*Are there installment plans available for the purchase of a residence in the community that I could start paying into today?*

Not yet, but we plan to make this facility available through the New Earth Portal in the coming months.

*Will all residents be treated as equal (as some will have luxury domes)?*

The degree to which a resident is treated equally will be equal to the degree to which that resident does not diminish the majesty of their sovereign self through undisciplined use of their own thoughts, words and deeds. This is the way it has always been and it is time that we each embody this.

*Can I live between different New Earth communities around the globe?*

Yes, when fully developed, the New Earth Portal will facilitate the movement and exchange of residents between communities in a flexible and cooperative manner.

*Can residents remodel their homes in the future in order to accommodate changing family needs (e.g. more children)?*

As sovereign inhabitants of a sovereign community, all matters relating to ongoing community development, planning, maintenance and function will be at the absolute discretion of that community. Some communities may require planning matters to be approved by the community, others may not. Each resident will be a part of the decision making process in determining how their community will operate.

*If I purchase a plot, can I build my own home as I choose, or will I have to have a New Earth designed home?*

There will be no restrictions imposed by New Earth in this regard. Certain communities may however choose to follow certain guidelines as to the type of buildings in the community, but this will be at the discretion of the community and its collective of sovereign inhabitants.

*Will I have free access to healthcare services and healing & wellness facilities available in the Retreats (and other services elsewhere)?*

New Earth Residents will have access to all facilities of all New Earth initiatives. No New Earth Resident will ever be denied necessities for want of payment. However permitting any individual or group of people to abuse resources or the goodwill of others is not a recipe for full spectrum sustainability. The degree to which all services are freely available (or instead provided at discounted rates in New Earth Promissories), will reflect the degree to which individuals or community’s do themselves embody the principles of service to others. 

*What if people within the community need urgent medical care and have completely left behind the old world?*

We don’t do what-if’s... we do consciousness in action! In time regional New Earth Healing Centres will be available to all New Earth Residents. However as sovereign New Earth Residents it is our collective responsibility to provide for our own needs or to evolve to a state in which we have none. If we need the security of medical support then we help create the platform to deliver it. And of course it’s never too late to return to an old world hospital and pay for medical care, but is that really the future you want to manifest for yourself?
        CONTENT
      }]
  },{
      link: "Create your own Community",
      title: "How to create your own Community within the New Earth",
      content: <<-CONTENT,
The New Earth Blueprint avails itself to all peoples as a means by which they may mutually cooperate in manifesting the world of prosperity, harmony and abundance which the human family is beginning now to collectively envision at this critical juncture. 
 
Whether a landowner or otherwise, New Earth invites everyone who resonates with the spirit and intent of the Blueprint to create their own communities within the New Earth.  

For those who do wish to develop their own Communities and also wish to be an integral part of the New Earth family, certain guidelines needfully apply to the use of the New Earth Blueprint, and thus the structure and operation of those Communities, in order to ensure the integrity and effectiveness of New Earth as the planetary touchstone for conscious evolution.
 
The New Earth Blueprint is a benchmark, not a rigid structure - all participants of New Earth are completely free to explore their creativity in advancing the Blueprint and creating infinite expressions of ideal conscious communities. Where desired the turnkey templates avail themselves to those wishing to develop their own communities.
 
By observing the following guidelines, landowners and other developers of New Earth Communities may benefit from:
 
* inclusion of the community within the global network of New Earth Communities along with all the benefits that entails
* entitlement for residents to acquire New Earth Resident status and thereby access the various benefits of residency.
* advice and support from New Earth’s vast planetary network of world-leading experts in creating, maintaining and operating their Community.
* free access to detailed working drawings of New Earth Architecture homes and buildings.
* access to New Earth Architects to design bespoke Community solutions.
* use of the New Earth Community Sales Room.
* use of New Earth Trust funds, where necessary, available and appropriate, to subsidise homes for those who cannot afford them.
* free full access to the New Earth Portal for all residents of the Community.
* access to New Earth’s suite of advanced technologies, including where possible free donations of technology or where not possible, the option to purchase available technologies at a cost price.
* any other benefit which New Earth Communities are capable and desirous of receiving, and which the New Earth Trust is capable and desirous of providing.
 
Whilst everyone is free to utilize any part of the New Earth Blueprint to develop a community in any way they choose, anyone who wishes to do so and receive the aforementioned benefits, will needfully observe the following guidelines:
 
* New Earth Trust Administration is notified of the proposed Community ahead of actual development, and community proposals are approved by the New Earth Trust as being suitably aligned with the spirit and intent of the New Earth Blueprint.
* The bundle of rights to the land on which the Community is situate are transferred to the Earth Sanctuary Trust or otherwise appropriately held on trust in a manner which grants appropriate authority to the New Earth Trustees and Earth Sanctuary Trustees to act in any way to ensure the continuity of unhindered use, and protection of rights, of those whom from time to time use the land or dwell thereon.
* The Community makes provision for sufficient community facilities, in alignment with the spirit intent of the Blueprint, commensurate with the scale of the proposed community. 
* The operation of the Community respects the absolute sovereignty of all of its residents.
* The Community avails itself to, and participates in, the greater New Earth Community to the extent that any other New Earth Community does.
* Where the Community is not in close proximity to an existing or proposed New Earth Institute, the Community makes provision for the New Earth Trust to develop, at its own expense, a New Earth Institute (to be operated in accordance with the wishes of the New Earth Council as duly appointed by the global family of New Earth residents and participants) to serve as the foundation of its philanthropic endeavours in the local region. 
* The Community makes provision for transient residencies as outlined in the New Earth Blueprint.
* The Community is developed, and endeavours to operate, in alignment with the true spirit of the New Earth Blueprint.


The process

* Prior to commencing development, the landowner or community developer will submit their proposal/vision statement/implementation plans to the New Earth Trust.
* The New Earth Trust will confirm that the proposals are in alignment with the spirit and intent of the New Earth Blueprint. Where they are not, or where there are omissions or concerns, the New Earth Trust will make recommendations and suggestions to create a full alignment.
* Where there is agreement and intent to proceed, a dedicated New Earth Community Coordinator will be appointed to the project by the New Earth Trust who will work with the developer to coordinate all aspects of New Earth assistance with the development and the communities fulfilment of the guidelines above.
* Once complete, the New Earth Coordinator will confirm to the Trustees that the integrity of the approved plan has been maintained and the community will exist as part of the New Earth family like any other New Earth Community.
* The Community Coordinator will continue to work with the community to ensure continuing alignment for the benefit of all.

These guidelines and processes will continually evolve as New Earth and it conscious participants continue themselves to remain open to the evolutionary process.  
      CONTENT
      subnav: [{
        link: "Opensource Community FAQ",
        title: "Opensource Community FAQ",
        content: <<-CONTENT
*Will the New Earth Trust help with business plans, budgets and investor kit for sourcing investment?*

At present, no. It is however hoped that sometime during 2014, the New Earth Mutual Fund will be opened up to provide necessary working capital for people developing their own communities to those with a solid plan. Making the need to source outside investment unnecessary.

*If we create our own community within the New Earth, can we also create a New Earth Retreat on adjunct land?*

Yes, there are no limitation on the number of ways in which landowners and other participants are able to engage with New Earth. See participate in a commercial undertaking with New Earth Retreats or how to create your own retreat within the New Earth for further details.

*When creating our own community within the New Earth can we select which parts of the New Earth Blueprint we like and not the parts we don’t?*

Yes and no. Provided that the spirit and intent of the Blueprint are upheld and the foundational principles of sovereignty/full spectrum sustainability etc are honoured then the New Earth Trust will be extremely flexible in this area, unless the creators plans and proposals fail to display sufficient wisdom in their conception.

*What are the different options and models we can use to create our own community?*

New Earth will not dictate how communities created by others should look. Feel free to employ the projects detailed turnkey templates, but feel free to explore your creativity as well.

*If we create our own community within the New Earth can we make our association with the project public?*

Of course… Regardless of how a New Earth Community is created, every New Earth Community, and every one of their residents, are part of the New Earth Family. In fact through the many components of the New Earth Portal we’ll help you to shout it from the rooftops as loud as you like!
        CONTENT
      }]
    },{
      link: "Existing Communities",
      title: "How to Bring your Existing Community into the New Earth",
      content: <<-CONTENT
New Earth invites any existing community whose principles and intentions are aligned with the New Earth Blueprint, or who are desirous of evolving their principles and intentions in alignment with the Blueprint, to bring their community into the New Earth. 

For those who do wish to bring their existing Communities into the New Earth, certain guidelines needfully apply to the structure and operation of those Communities, in order to ensure the integrity and effectiveness of New Earth as the planetary touchstone for conscious evolution.
 
The New Earth Blueprint is a benchmark, not a rigid structure - all participants of New Earth are completely free to explore their creativity in advancing the Blueprint and creating infinite expressions of ideal conscious communities. 
 
By observing the following guidelines, existing Communities may enter the New Earth and, by extension, benefit from:
 
* Inclusion of the community within the global network of New Earth Communities along with all the benefits that entails
* Entitlement for residents to acquire New Earth Resident status and thereby access the various benefits of residency.
* Advice and support from New Earth’s vast planetary network of world-leading experts in maintaining, operating and evolving their Community.
* Free access to detailed working drawings of New Earth Architecture homes and buildings for any community extensions or remodelling.
* Free full access to the New Earth Portal for all residents of the Community.
* Access to New Earth’s suite of advanced technologies, including where possible free donations of technology or where not possible, the option to purchase available technologies at a cost price.
* Any other benefit which the Community is capable and desirous of receiving, and which the New Earth Trust is capable and desirous of providing.
 
Those wishing to bring their existing communities into the New Earth and receive the aforementioned benefits, will needfully observe the following guidelines:
 
* The New Earth Trust approves the community as being suitably aligned with the spirit and intent of the New Earth Blueprint.
* The bundle of rights to the land on which the Community is situate are transferred to the Earth Sanctuary Trust or otherwise appropriately held on trust in a manner which grants appropriate authority to the New Earth Trustees and Earth Sanctuary Trustees to act in any way to ensure the continuity of unhindered use, and protection of rights, of those whom from time to time use the land or dwell thereon.
* The operation of the Community respects the absolute sovereignty of all of its residents.
* The Community avails itself to, and participates in, the greater New Earth Community to the extent that any other New Earth Community does.
* Where the community is not already an example of full spectrum sustainability, the community will agree to work with New Earth to become such.
* Where the Community is not in close proximity to an existing or proposed New Earth Institute, the Community permits the New Earth Trust to develop, at its own expense, a New Earth Institute (to be operated in accordance with the wishes of the New Earth Council as duly appointed by the global family of New Earth residents and participants) on community land, to serve as the foundation of its philanthropic endeavours in the local region. All services of the Institute will be freely available to all community residents. 
* The Community endeavours to operate, in alignment with the true spirit of the New Earth Blueprint.

The process

* The Community provides the New Earth Trust Administration Team with detailed information on the community, how it operates, its founding principles and any other relevant information. 
* New Earth Trust approves the community as being suitably aligned with the spirit and intent of the New Earth Blueprint. Where they are not, or where there are omissions or concerns, the New Earth Trust will make recommendations and suggestions to create a full alignment and will work with the Retreat to create a plan and timetable for achieving full spectrum sustainability.
* Where there is agreement and intent to proceed, a dedicated New Earth Community Coordinator will be appointed to the project by the New Earth Trust who will work with the community to coordinate all aspects of that which is required to facilitate the fulfilment of the guidelines above.
* Once complete, the New Earth Coordinator will confirm to the Trustees that everything is in order and the community will exist as part of the New Earth family like any other New Earth Community.
* The Community Coordinator will continue to work with the community to ensure continuing alignment for the benefit of all.

These guidelines and processes will continually evolve as New Earth and it conscious participants continue themselves to remain open to the evolutionary process.  
      CONTENT
    },{
      link: "Terms and Conditions",
      title: "Terms and Conditions of Residency",
      content: <<-CONTENT
These terms and conditions for new residents may be amended from time to time. 

### All Residents

All residents necessarily possess or develop a skill which is crucial to the functioning of a successful community - everyone has such a skill; whether you are 80 years old and able to care for the next generation of New Earthers, or 20 years old with nothing but the enthusiasm to learn and practice permaculture, healing, food preparation, or whatever it is that you love the most - there is something for everyone.

All residents agree to: 

* endeavour to live in accordance with natural law, to do no harm, and to mutually assist one another to advance their own perfection and that of the human condition
* participate in community life, and to expend their energy in service of the community or its inhabitants to such a degree as the specific communities protocols provide for as determined collectively by the residents themselves. 
* endeavour to settle any disputes to which they are a party in an open and expedient fashion and shall endeavour not to permit their own personal perspectives, baggage or ego to take priority over, or to otherwise disrupt, the peaceful coexistence of the community and its residents or prevent harmony between themselves and their fellow residents.
* endeavour to honour & respect the inherent validity of the personal truths and perspectives of their fellow residents.
* endeavour to honour and respect the spirit and intent of New Earth. 
* express their inherent sovereignty to the best of their ability at all such times as said sovereignty is threatened, questioned or undermined by any third party interloper.

### Permanent Residents

In addition to the above, all permanent residents agree to 

* participate in community decision making as per the community protocols which residents collectively determine themselves.

### Transient Residents

In addition to the above, all transient residents agree to: 

* leave their transient home in the same state that they found it at the end of each stay in a community.
* contribute to the maintenance and upkeep of the transient community homes as may from time to time be required.

Whilst there is no time limits imposed on the proximity of a booking to an intended stay, transient residency useage will only be guaranteed for those transient residents who book their stays at least six months in advance. No one may book a stay beyond 18 months in advance.
      CONTENT
    },{
      link: "Ownership",
      title: "Ownership",
      content: <<-CONTENT
Ownership is a concept, it exists nowhere but in the minds of men and women, it is an illusion. For centuries this illusion has been propagated as a means by which to cause the separation and enslavement of humanity. 

It is the owner of a thing who carries the liabilities for that thing; It is the owner of a dog who is liable to pay a fine when his dog fowls the sidewalk; It is the owner of property who is liable for estate taxes & duties; and it is the owner of a Name who is liable for income taxes. Without the illusion of ownership no man or woman, anywhere, would have any liabilities for anything whatsoever.

In reality no man or woman does in fact own anything; something which is real cannot own something which is not. So in order for a man or woman to successfully claim to own something, he or she must first pretend to be something they are not. Something which also does not exist anywhere but in the minds of men and women. See how current systems of government obtain power over human beings for more details.

It is therefore imperative that the New Earth transcend the illusion of ownership. 

Until such time as this paradigm has fallen away altogether, New Earth employs the Earth Sanctuary Trust to hold title (evidence of the illusion of ownership) to all New Earth lands, on trust, for the benefit of New Earth participants and/or residents. In this way the lands and 'property' of the New Earth are protected in perpetuity in a manner which transcends the ownership paradigm whilst affording residents, and other New Earth participants, unconstrained and unalienable use of those lands and properties in a safe and secure environment. 

See below to understand what this means in specific circumstances in the New Earth…

### Home ownership

New Earth recognises that the desire to own property remains important to many people. Thus when someone buys or otherwise obtains a home in a New Earth Community, they will actually ‘own’ the home in question and will have the right to use, in common, the community lands upon which the home is situate, subject to the Terms & Conditions of Residency.

Residents who would like to move beyond the ownership paradigm altogether may freely use the services of New Earth to provide the same arrangement for their home as the Earth Sanctuary Trust provides for community lands. 

### Plot ownership

When someone buys or otherwise obtains a plot in a New Earth Community, they do not acquire ownership of the land itself, they actually acquire the right build a home on a specific piece of New Earth Community land and the right to use, in common, the community lands within which the plot is situate, subject to the Terms & Conditions of Residency.

When buying a plot within the New Earth, the particulars of sale will explicitly state:

1.  The maximum built footprint permitted upon the plot.
2.  The extent of the land to which the right to use in common extends.
3.  Any other details as may be specific to a particular community.

### Transient Residents

When someone buys or otherwise obtains a Transient Residency in a New Earth Community, they are acquiring the right to use, for life, a specific New Earth Community home, or bundle of homes in a specific community, for a specified period of time each year.
      CONTENT
    }]    
  end
end
