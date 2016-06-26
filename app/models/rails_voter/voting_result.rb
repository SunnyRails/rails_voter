module RailsVoter
  class VotingResult < ActiveRecord::Base
    belongs_to :ballot_form_detail

    scope :show, lambda { |ballot_form_id|
      where(
        "ballot_form_detail_id IN (?)", RailsVoter::BallotForm.
        find(ballot_form_id).
        ballot_form_details.pluck(:id)
      ).
        group(:ballot_form_detail_id).
        count.
        sort_by { |_, v| v }.
        reverse.
        to_h
    }
  end
end
