class SkillsController < ApplicationController

  # this method will redirect to index page and get list of active skills
  def index
    @skill = Skill.all.where("is_active=?", true)
  end
  # todo save employee skills for every employee for promotion
end