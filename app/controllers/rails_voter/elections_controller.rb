require_dependency "rails_voter/application_controller"

module RailsVoter
  class ElectionsController < ApplicationController
    expose :elections, -> { Election.all }
    expose :election, model: RailsVoter::Election
    expose :election_details, -> { ElectionDetail.where(election_id: params[:id]) }
    expose :voting_result, -> { RailsVoter::VotingResult.new }
    expose :voting_result_show, -> { RailsVoter::VotingResult.show(params[:id]) }

    def new
      10.times do
        election.election_details.new
      end
    end

    def create
      if election.save
        redirect_to elections_path
      else
        render :new
      end
    end

    def update
      if election.update(election_params)
        redirect_to elections_path
      else
        render :new
      end
    end

    def vote
      render layout: false
    end

    private

    def election_params
      params.require(:election).permit(:name, election_details_attributes: [:name, :id])
    end
  end
end
