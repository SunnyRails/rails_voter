class ChangeBallotFormName < ActiveRecord::Migration
  def up
    rename_table("rails_voter_ballot_forms", "rails_voter_elections")
  end

  def down
    rename_table("rails_voter_elections", "rails_voter_ballot_forms")
  end
end
