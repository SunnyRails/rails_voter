# This migration comes from rails_voter (originally 20160608141052)
class CreateRailsVoterVotingResults < ActiveRecord::Migration
  def change
    create_table :rails_voter_voting_results do |t|
      t.timestamps null: false
    end
  end
end
