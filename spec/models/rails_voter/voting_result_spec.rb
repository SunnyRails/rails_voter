require "rails_helper"

module RailsVoter
  RSpec.describe VotingResult, type: :model do
    describe "database columns" do
      it { should have_db_column :election_detail_id }
    end

    describe "associations" do
      it { is_expected.to belong_to :election_detail }
    end
  end
end
