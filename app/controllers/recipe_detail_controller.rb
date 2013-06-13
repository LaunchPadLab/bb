class RecipeDetailController < UIViewController
  
  attr_accessor :name
  
  def initWithRecipe(name)
    initWithNibName(nil, bundle: nil)
    self.name = name
    self    
  end
  
  def viewDidLoad
    super
    
    self.title = self.name
    self.view.backgroundColor = UIColor.whiteColor
    
  end
  
  
  
  
end