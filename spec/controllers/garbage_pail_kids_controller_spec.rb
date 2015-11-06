require 'rails_helper'

RSpec.describe GarbagePailKidsController, type: :controller do

  describe 'INDEX :index' do
    it 'should return all the garbage pail kids' do
      expect(get :index).to render_template("index")
    end
  end

  describe 'POST :create' do
    let(:photo_file) { fixture_file_upload('LarryLoMein.jpg', 'image/jpg') }
    # let(:photo) { Base64.encode64(File.read(photo_file)) }
    # let(:content_type) { "image/jpg" }


    it 'should increase the number of kids by one' do
      expect{ post :create, garbage_pail_kid: {photo: photo_file} }.to change(GarbagePailKid, :count).by 1
    end
  end

end

# https://github.com/Everseat/everseat-web/blob/e693d3837ac0853b7643bf41b3276df24b578832/spec/controllers/api/v1/insurance_cards_controller_spec.rb
# require 'rails_helper'
#
# RSpec.describe Api::V1::InsuranceCardsController, type: :controller do
#
#   include ApplicationHelper
#
#   let!(:user) { create :user }
#   let(:insurance_card) { attributes_for :insurance_card, user_id: user.id }
#
#   before(:each) do
#     sign_in user
#     set_content_headers
#   end
#
#   describe 'POST :create' do
#     render_views
#
#     context 'the user doesn\'t have a health card yet' do
#       it 'should respond with success' do
#         expect { post :create,
#                       insurance_card: insurance_card,
#                       format: :json }.to change{ InsuranceCard.count }.by 1
#         expect(response.status).to eq 201
#       end
#     end
#
#     context 'the user already has a health card' do
#
#       before do
#         create :insurance_card, user_id: user.id
#       end
#
#       it 'should not increase the number of cards' do
#         expect { post :create,
#                       insurance_card: insurance_card,
#                       format: :json}.to change{ InsuranceCard.count }.by 0
#         expect(response.status).to eq 201
#       end
#     end
#
#     context 'the file upload is base64' do
#       it 'should respond with success' do
#         expect { post :create,
#           insurance_card: {
#             photo: Base64.encode64(open('spec/fixtures/insurance_photos/bulldog.jpg') { |io| io.read }),
#             content_type: "image/jpg",
#             filename: "bulldog.jpg",
#             card_type: "health"
#           },
#           format: :json}.to change{ InsuranceCard.count }.by 1
#         expect(response.status).to eq 201
#       end
#     end
#   end
#
#   describe 'GET :index' do
#     render_views
#     let!(:card1) { create :insurance_card, user_id: user.id }
#     let!(:card2) { create :insurance_card, user_id: user.id }
#
#     it 'should respond with success' do
#       get :index, user_id: user.id, format: :json
#       expect(response.body).to match_json_expression([{
#         id: card1.id,
#         photo_file_name: card1.photo_file_name,
#         photo_url: full_photo_url(card1.photo.url),
#         card_type: card1.card_type,
#         user_id: user.id,
#       },
#       {
#         id: card2.id,
#         photo_file_name: card2.photo_file_name,
#         photo_url: full_photo_url(card2.photo.url),
#         card_type: card2.card_type,
#         user_id: user.id,
#           }])
#       expect(response.status).to eq 200
#     end
#   end
#
#   describe 'DELETE :destroy' do
#
#     it 'should delete the card' do
#       @card = create :insurance_card, user_id: user.id
#       delete :destroy, id: @card.id, format: :json
#       expect(response.body).to eq ""
#       expect(response.status).to eq 204
#     end
#
#     it 'destroys the card' do
#       @card = create :insurance_card, user_id: user.id
#       expect {
#         delete :destroy, id: @card.id, format: :json
#       }.to change(InsuranceCard, :count).by -1
#     end
#   end
# end
