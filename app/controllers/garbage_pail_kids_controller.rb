# Manages the GarbagePailKids
class GarbagePailKidsController < ApplicationController
  
  def create
    photo = params[:garbage_pail_kid][:photo]
    content_type = params[:garbage_pail_kid][:content_type]
    if photo.is_a? String
      photo = process_photo(photo, content_type)
    end

    GarbagePailKid.create photo: photo
    redirect_to root_url
  end

  def index
    @kids = GarbagePailKid.all
  end

  private

  def process_photo(base64_object, content_type)
    Paperclip.io_adapters.for("data:#{content_type};base64,#{base64_object}")
  end

  def kid_params
    params.require(:garbage_pail_kid).permit(:photo)
  end

end
