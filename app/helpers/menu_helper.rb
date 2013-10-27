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
        'sovereignty declaration' => sovereignty_declaration_members_path,
        'profile' => edit_profile_members_path
      }
    else
      {'institute' => about_institute_path}
    end
  end
end