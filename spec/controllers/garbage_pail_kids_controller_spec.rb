require 'rails_helper'

RSpec.describe UnicornController, type: :controller do

  describe 'New :create' do

    it 'should increase the number of unicorns' do
      expect{ post :new }.to change(Unicorn, :count).by 1
    end
  end

end
