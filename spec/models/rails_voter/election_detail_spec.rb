require "rails_helper"

module RailsVoter
  RSpec.describe ElectionDetail, type: :model do
    describe 'database columns' do
      it { should have_db_column :name }
      it { should have_db_column :election_id }
    end

    describe 'associations' do
      it { is_expected.to belong_to :election }
      it { is_expected.to have_many :voting_results }
    end  end
end
