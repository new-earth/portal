module PagesHelper

  @@SECTIONS = ['locations', 'enter', 'institute', 'exchange', 'festival']
  @@SECTION_REMAPS = {enter: 'enter new earth'}
  
  def topnav_dropdown
    if controller? 'pages'
      slug = @sects.slug
      menu_items = Array.new(@@SECTIONS)
      remaps = Hash[@@SECTION_REMAPS]
      menu_items.delete(slug)
      render partial: 'shared/dropdown', locals: {sects: @sects, menu_items: menu_items, remaps: remaps}
    end
  end
  
  def usernav_dropdown(current_user)
  end

end
