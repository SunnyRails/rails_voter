# This migration comes from rails_voter (originally 20160608145149)
class AddRefToRailsVoterVotingResult < ActiveRecord::Migration
  def change
    add_reference :rails_voter_voting_results, :ballot_form_detail, index: true, foreign_key: true
  end
end
