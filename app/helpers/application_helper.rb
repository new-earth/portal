module ApplicationHelper

  def init_static_assets(assets='base')
    case assets
    when 'base'
      render :partial => "shared/base_assets"
    end  
  end

end

