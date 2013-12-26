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

  def bootstrap_class_for(flash_type)
    { success: "alert-success", error: "alert-error", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

end

