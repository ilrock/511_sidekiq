class ProfilesController < ApplicationController
  def update
    @profile = Profile.find(params[:id])

    @profile.update(profile_params)
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :job_title)
  end
end
