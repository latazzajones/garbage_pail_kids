require 'rails_helper'

RSpec.describe GarbagePailKidsController, type: :controller do

  describe 'INDEX :index' do
    it 'should return all the garbage pail kids' do
      expect(get :index).to render_template("index")
    end
  end

  describe 'POST :create' do
    let(:photo_file) { fixture_file_upload('LarryLoMein.jpg', 'image/jpg') }
    let(:encrypted_photo) { Base64.encode64(File.read(photo_file)) }
    let(:content_type) { "image/jpg" }


    it 'should increase the number of kids by one' do
      expect{ post :create, garbage_pail_kid: { photo: photo_file } }.to change(GarbagePailKid, :count).by 1
    end

    it 'should accept a base 64 encrypted photo' do
      expect{ post :create, garbage_pail_kid: { photo: encrypted_photo,
                                                content_type: "image/jpg",
                                                filename: 'LarryLoMein.jpg',
                                                },
                                                format: :json}.to change(GarbagePailKid, :count).by 1
    end
  end
end
