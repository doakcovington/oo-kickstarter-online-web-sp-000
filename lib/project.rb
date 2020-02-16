class Project

  attr_accessor :title, :backers, :backer

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    @backers << backer #A project has many backers
    backer.backed_projects(self) unless backer.backed_projects.include?(self)#belongs to
  end

end
