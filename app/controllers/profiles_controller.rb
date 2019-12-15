class ProfilesController < ApplicationController
  def index
    if current_user.profile
      @profiles = Profile.all
    else
      redirect_to new_profile_path
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def search
    results = PgSearch.multisearch(params[:query])
    @profiles = []
    results.each do |result|
      if result.searchable.class.to_s == "Skill"
      result.searchable.profiles.each do |profile|
        @profiles << profile
      end
      else
      @profiles << result.searchable
      end
    end
  end

  def new
    @profile = Profile.new
  end

  def create
    profile = Profile.new(profile_params)
    profile.email = current_user.email
    profile.user = current_user
    profile.save


    redirect_to root_path
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)

    redirect_to profile_path(@profile)
  end


  private


  def profile_params
  params.require(:profile).permit(:full_name, :current_role, :description, :github_username, :slack_username, :photo)
  end

end
