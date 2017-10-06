module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      link_to "Logout", destroy_user_session_path, method: :delete, class: style
    end
  end


  def nav_items
    [
      {
        url: user_path(current_user),
        title: '単語帳'
      },
      {
        url: dictionary_users_path,
        title: '単語帳'
      }
    ]
  end

  def nav_helper style
    nav_links = ''

    nav_items.each do |item|
      nav_links << "<a href='#{item[:url]}' class='#{style}'>#{item[:title]}</a>"
    end

    nav_links.html_safe

  end



end
