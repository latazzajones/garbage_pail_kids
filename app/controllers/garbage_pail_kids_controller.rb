# Manages the GarbagePailKids
class GarbagePailKidsController < ApplicationController

  def create
    puts "These are the params: #{params}"
    kid = GarbagePailKid.create kid_params
    redirect_to root_url
  end

  def index
    @kids = GarbagePailKid.all
  end

  private

  def kid_params
    params.require(:garbage_pail_kid).permit(:photo)
  end

end
