class HomeController < ApplicationController
  access all: [:index], user: {except: [:destroy,:new,:create, :update, :edit, :toggle_status]}, site_admin: :all
  def index
    @meanings = Meaning.all
  end
end
