class ChangeBallotFormIdColumnName < ActiveRecord::Migration
  def up
    rename_column "rails_voter_election_details", :ballot_form_id, :election_id
  end

  def down
    rename_column "rails_voter_election_details", :election_id, :ballot_form_id
  end
end
