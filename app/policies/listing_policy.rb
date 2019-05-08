class ListingPolicy < ApplicationPolicy
  

  def edit?
    @user == @record.owner
  end
end
