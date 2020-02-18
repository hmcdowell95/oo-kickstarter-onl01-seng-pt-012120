class Backer
  attr_reader :name, :backed_projects
  
  def initialize(name)
    @name = name
    @backed_projects = []
  end
  
  def backed_projects
    @backed_projects
  end
  
  def back_project(x)
    @backed_projects << x 
    if x.backers.include?(self) == true 
    else
    x.add_backer(self)
    end
  end
end