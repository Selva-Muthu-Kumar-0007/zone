require 'rails_helper'

RSpec.describe Zone, type: :model do
  let(:zone) { FactoryBot.create(:zone) }

  # describe 'validations' do
  #   context 'validates_uniqueness_of' do
  #     before { create(:zone) }
  #     it { should validate_uniqueness_of(:slug).scoped_to(:vaccount_id).with_message('is already present').case_insensitive }
  #     it { should validate_uniqueness_of(:name).scoped_to(:vaccount_id).with_message('is already present').case_insensitive }
  #   end
  # end
end
