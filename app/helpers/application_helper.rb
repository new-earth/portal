module ApplicationHelper
  def bootstrap_class_for(flash_type)
    { success: "alert-success", error: "alert-error", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end

  def render_breadcrumbs
    render_crumbs format: :html_list, ul_class: 'breadcrumb', last_class: 'active', last_crumb_linked: false, microdata: true
  end

  def current_layout
    layout = controller.send(:_layout)
    if layout.instance_of? String
      layout
    else
      File.basename(layout.identifier).split('.').first
    end
  end

  def bootstrap_class_for flash_type
    { success: "alert-success", error: "alert-error", alert: "alert-warning", notice: "alert-info" }[flash_type] || flash_type.to_s
  end
 
  def flash_messages(opts = {})
    flash.each do |msg_type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(msg_type)} fade in", id: "flash") do 
        concat content_tag(:button, 'x', class: "close", data: { dismiss: 'alert' })
        concat message 
      end)
    end
    nil
  end

  def this_section
    @sects.section || ''
  end

  def this_subsection
    @sects.subsection || nil
  end

  def section_slug
    @sects.slug || ''
  end

  def subsection_slug
    @sects.subslug || nil
  end

  def signed_in?
    if defined? current_user
      current_user
    else
      false
    end
  end

  def controller?(name='')
    controller_name.downcase == name.downcase
  end

end

