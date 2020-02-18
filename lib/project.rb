class Project 
  attr_reader :title, :backers
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backers
    @backers 
  end
  
  def add_backer(x)
    @backers << x
    if x.backed_projects.include?(self) == true
    else
    x.back_project(self)
    end
  end 
  
  
end