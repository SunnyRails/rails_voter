class ChangeBallotFormDetailName < ActiveRecord::Migration
  def up
    rename_table("rails_voter_ballot_form_details", "rails_voter_election_details")
  end

  def down
    rename_table("rails_voter_election_details", "rails_voter_ballot_form_details")
  end
end
