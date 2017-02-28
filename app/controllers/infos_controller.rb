class InfosController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]

  def profile
  end

  def contact
  end
end
