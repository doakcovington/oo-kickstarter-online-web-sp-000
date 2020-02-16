class Backer
  attr_accessor :name, :backed_projects, :project

  def initialize(name)
    @backed_projects = []
    @name = name
  end

  def back_project(project)
    @backed_projects << project
    project.backer << self
  end


end
