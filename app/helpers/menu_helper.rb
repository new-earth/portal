module MenuHelper
  def sections
    # %w(locations institute enter_new_earth exchange festival members)
    {
      'new earth blueprint' => '#', # TODO
      'locations' => locations_path,
      'institute' => institute_path,
      'enter_new_earth' => enter_path,
      'exchange' => exchange_path,
      'festival' => festival_path
    }
  end

  def current_menu
    menu_for(current_section)
  end

  def menu_for(section)
    {
      "locations" => {
        'map' => '/locations',
        "communities" => "/locations/communities",
        "retreats" => "/locations/retreats",
        "landowners" => "/locations/landowners",
        "protection" => "/locations/protection",
        "templates" => "/locations/templates"
      },
      "institute" => {
        "academy of law" => "/institute/law",
        "academy of wellness" => "/institute/wellness"
      },
      "enter_new_earth" => {
        'about' => '#',
        'e-democracy' => '#',
        'sovereignty' => '#',
        'community' => '#',
        'store' => '#'
      },
      # 'exchange' => {
      #   'about' => '#',
      #   'souvereign' => '#',
      #   'accounts' => '#',
      #   'funds' => '#'
      # },
      'festival' => {
        'festival' => '#',
        'congress' => '#',
        'exposition' => '#',
        'releases' => '#',
        'tickets' => '#'
      },
      # 'members' => {
      #   'declaration' => declaration_members_path,
      #   'profile' => new_member_path
      # }
    }[section] || {}
  end

  def current_section
    @section
  end
  
  def current_subsection
    @subsection
  end

  def current_title
    title_for(current_section) || @section.titleize.downcase
  end

  def title_for(section)
    {
      "enter-new-earth" => "enter new earth",
      "locations" => "locations"
    }[section]
  end

  def current_subtitle
    subtitle_for(current_subsection)
  end

  def subtitle_for(subsection)
    return @current_subsection
  end
end
