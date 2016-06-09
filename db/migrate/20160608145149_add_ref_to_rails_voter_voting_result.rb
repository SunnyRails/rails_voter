class AddRefToRailsVoterVotingResult < ActiveRecord::Migration
  def change
    add_reference :rails_voter_voting_results, :ballot_form_detail, index: true, foreign_key: true
  end
end
