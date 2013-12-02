module ApplicationHelper

  def init_static_assets(assets='base')
    case assets
    when 'base'
      render :partial => "shared/base_assets"
    end  
  end

  def render_breadcrumbs
    render_crumbs format: :html_list, :ul_class => 'breadcrumb', :last_class => 'active', :microdata => true
  end

end

