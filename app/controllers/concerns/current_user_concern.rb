module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(
                    nick_name: "ゲスト",
                    email: "guest@example.com"
                  )
  end
end