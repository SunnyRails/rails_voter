require_dependency "rails_voter/application_controller"

module RailsVoter
  class VotingResultsController < ApplicationController
    expose :voting_result, model: RailsVoter::VotingResult

    def create
      voting_result.save
    end

    private

    def voting_result_params
      params.require(:voting_result).permit(:ballot_form_detail_id)
    end
  end
end
