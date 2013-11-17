module MenuHelper
  def menu_for(title)
    case title
    when "institute"
      {
        'about' => about_institute_path,
        'live stage' => live_stage_institute_path,
        'library' => library_institute_path,
        'community' => community_institute_path
      }
    when 'members'
      {
        'declaration' => declaration_members_path,
        'profile' => new_member_path
      }
    else
      {'institute' => about_institute_path}
    end
  end

  def current_section
    case request.path
    when /^\/enter-new-earth/
      "enter-new-earth"
    end
  end

  def current_subsection
    
  end

  def current_title
    title_for(current_section)    
  end

  def title_for(section)
    {
      "enter-new-earth" => "enter new earth"
    }[section]
  end

  def current_subtitle
    subtitle_for(current_subsection)
  end

  def subtitle_for(subsection)
    
  end
end