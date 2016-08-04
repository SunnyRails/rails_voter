# This migration comes from rails_voter (originally 20160707131546)
class ChangeBallotFormDetailIdName < ActiveRecord::Migration
  def up
    rename_column "rails_voter_voting_results", :ballot_form_detail_id, :election_detail_id
  end

  def down
    rename_column "rails_voter_voting_results", :election_detail_id, :ballot_form_detail_id
  end
end
