class ListingsController < ApplicationController
  before_action :authenticate_user!, except: :index

  def index
    @listings = Listing.all
  end

  def new
    @listing = Listing.new
  end

  def edit
    @listing = Listing.find(params[:id])
    authorize(@listing)
    # if user_can_edit(@listing)
    #   redirect_to root_path, notice: 'You are NOT allowed to edit this listing'
    # end
  end

  # private

  # def user_can_edit(resource)
  #   current_user != resource.owner
  # end

end
