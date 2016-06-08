class CreateRailsVoterVotingResults < ActiveRecord::Migration
  def change
    create_table :rails_voter_voting_results do |t|
      t.timestamps null: false
    end
  end
end
