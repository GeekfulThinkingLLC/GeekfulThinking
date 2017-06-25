module ApplicationHelper
  def link_fa_to(icon_name, text, link)
    link_to content_tag(:i, text, :class => "fa fa-#{icon_name}"), link
  end

  def alerts
    alert = flash[:alert]
    error = flash[:error]
    notice = flash[:notice]

    if alert
      js add_gritter(alert, title: "My Missionary Box", sticky: false, image: :warning)
    elsif error
      js add_gritter(error, title: "My Missionary Box", sticky: false, image: :error)
    else notice
      js add_gritter(notice, title: "My Missionary Box", sticky: false, image: :success)
    end
    
  end
end
