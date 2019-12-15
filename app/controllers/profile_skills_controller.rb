class ProfileSkillsController < ApplicationController
  def new
    @profile_skill = ProfileSkill.new
  end

  def create
    unless Skill.find_by(title: params[:profile_skill][:skill])
      skill = Skill.create(title: params[:profile_skill][:skill])
    else
      skill = Skill.find_by(title: params[:profile_skill][:skill])
    end
    profile_skill = ProfileSkill.new(experience: params[:profile_skill][:experience], profile: current_user.profile)
    profile_skill.skill = skill
    profile_skill.save!

    redirect_to profile_path(current_user.profile)
  end
end
