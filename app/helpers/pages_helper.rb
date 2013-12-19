module PagesHelper

  def topnav_dropdown(section_name)
    unless current_page?(root_url)
      menu_items = ['enter new earth', 'institute', 'bank exchange', 'festival']
      render partial: 'layouts/dropdown', locals: { :section_name => section_name, :menu_items => menu_items }
    end
  end
  
  def usernav_dropdown(current_user)
  end

end
