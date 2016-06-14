require_dependency "rails_voter/application_controller"

module RailsVoter
  class BallotFormsController < ApplicationController
    expose :ballot_forms, -> { BallotForm.all }
    expose :ballot_form, model: RailsVoter::BallotForm

    def new
      ballot_form.ballot_form_details.new
    end

    def create
      if ballot_form.save
        redirect_to ballot_forms_path
      else
        render :new
      end
    end

    def update
      if ballot_form.update(ballot_form_params)
        redirect_to ballot_forms_path
      else
        render :new
      end
    end

    private

    def ballot_form_params
      params.require(:ballot_form).permit(:name, ballot_form_details_attributes: [:name, :id])
    end
  end
end
