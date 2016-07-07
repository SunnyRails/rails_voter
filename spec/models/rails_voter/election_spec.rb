require "rails_helper"

module RailsVoter
  RSpec.describe Election, type: :model do
    describe 'validations' do
      it { is_exepcted.to validate_presence_of :name }
    end

    describe 'nested attributes' do
      it { should accept_nested_attributes_for :election_detail }
    end

    describe 'datatabase columns' do
      it { should have_db_column :name }
    end

    describe 'assocations' do
      it { is_expected.to belong_to :election_detail }
    end
  end
end
