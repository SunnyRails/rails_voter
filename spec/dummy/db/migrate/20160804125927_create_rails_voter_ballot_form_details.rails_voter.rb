# This migration comes from rails_voter (originally 20160607180000)
class CreateRailsVoterBallotFormDetails < ActiveRecord::Migration
  def change
    create_table :rails_voter_ballot_form_details do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
