require "rails_helper"

module RailsVoter
  RSpec.describe BallotForm, type: :model do
    let(:bf) { create(:rails_voter_ballot_form, name: "My sample ballot form") }
    it "returns sample name" do
      expect(bf.name).to eq("My sample ballot form")
    end
  end
end
