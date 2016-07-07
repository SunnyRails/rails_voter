module RailsVoter
  class ElectionDetail < ActiveRecord::Base
    belongs_to :election
    has_many :voting_results
  end
end
