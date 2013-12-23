module ApplicationHelper

  def init_static_assets(assets='base')
    case assets
    
    when 'base'
      render :partial => "shared/base_assets"
    end
  end

  def render_markdown(content)
    MarkdownService.new.render(content).html_safe
  end

end

