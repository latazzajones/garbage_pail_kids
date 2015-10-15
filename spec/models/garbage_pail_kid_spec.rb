require 'rails_helper'

RSpec.describe GarbagePailKid, type: :model do

  it { should validate_presence_of :photo }

end
