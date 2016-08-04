# This migration comes from rails_voter (originally 20160603071236)
class CreateRailsVoterBallotForms < ActiveRecord::Migration
  def change
    create_table :rails_voter_ballot_forms do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
