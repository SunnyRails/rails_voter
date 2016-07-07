require "rails_helper"

module RailsVoter
  RSpec.describe VotingResult, type: :model do
    describe 'database columns' do
      it { should have_db_column :ballot_form_detail_id }
    end

    describe 'associations' do
      it { is_expected.to belong_to :ballot_form_detail }
    end
  end
end
