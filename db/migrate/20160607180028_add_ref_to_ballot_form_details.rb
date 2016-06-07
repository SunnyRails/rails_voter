class AddRefToBallotFormDetails < ActiveRecord::Migration
  def change
    add_reference :rails_voter_ballot_form_details, :ballot_form, index: true, foreign_key: true
  end
end
