module RailsVoter
  class BallotForm < ActiveRecord::Base
    has_many :ballot_form_details

    validates :name, presence: true
  end
end
