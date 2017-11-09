module ApplicationHelper
  def login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_registration_path, class: style) +
      " ".html_safe +
      (link_to "Login", new_user_session_path, class: style)
    else
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style) +
      " ".html_safe +
      (link_to "マイページ", user_path(current_user), class: style)
    end
  end


  def nav_items
    [
      {
        url: dictionary_users_path,
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

  def parts
    [1,2,3,4,5]
  end

  def levels
    ["初級","中級","上級"]
  end

  def side_bar_helper
    sidebars = ''
    i = 1

    levels.each do |level|
      sidebars << "<div class='collapse text-center' id='menu#{i.to_s}'>
        <a href='#menu#{i.to_s}sub#{i.to_s}' class='list-group-item list-group-item-action' data-toggle='collapse' aria-expanded='false'> #{level}</a>"
        parts.each do |part|
        "<div class='collapse' id='menu#{i.to_s}sub#{i.to_s}'>
            <a href='#' class='list-group-item list-group-item-action' data-parent='menu#{i.to_s}'>#{part}</a>
        </div>"
        end
        "</div>"
        i += 1
    end

    sidebars.html_safe

  end

  def example_creation_button_toggle_helper object
    max_example_numbers = 5

    if object.examples.count.to_i > max_example_numbers
      link_to "例文作る" , "#{request.url}", class: "btn-sm btn-secondary disabled"
    else
      link_to "例文作る" , new_meaning_example_path(object.id), class: "btn-sm btn-warning text-white"
    end

  end


end
