require "rails_helper"

module RailsVoter
  RSpec.describe Election, type: :model do
    let(:bf) { create(:rails_voter_election, name: "My sample election form") }
    it "returns sample name" do
      expect(bf.name).to eq("My sample election form")
    end
  end
end
