require 'rails_helper'

RSpec.describe Unicorn, type: :model do

  it { should validate_presence_of :photo }

end
