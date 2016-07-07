module RailsVoter
  class VotingResult < ActiveRecord::Base
    belongs_to :election_detail

    scope :show, lambda { |election_id|
      where(
        "election_detail_id IN (?)", RailsVoter::Election.
        find(election_id).
        election_details.pluck(:id)
      ).
        group(:election_detail_id).
        count.
        sort_by { |_, v| v }.
        reverse.
        to_h
    }
  end
end
