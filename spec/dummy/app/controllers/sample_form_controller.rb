class SampleFormController < ApplicationController
  def create
    render :index
  end

  private

  def params_sample_form
    params.permit(:content)
  end
end
