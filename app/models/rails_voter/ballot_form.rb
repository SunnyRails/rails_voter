module RailsVoter
  class BallotForm < ActiveRecord::Base
    has_many :ballot_form_details

    accepts_nested_attributes_for(
      :ballot_form_details,
      reject_if: proc { |bfd| bfd["name"].blank? },
      allow_destroy: true
    )

    validates :name, presence: true
  end
end
