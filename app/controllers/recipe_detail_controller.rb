class RecipeDetailController < UIViewController
  
  attr_accessor :recipe
  
  def initWithRecipe(recipe)
    initWithNibName(nil, bundle: nil)
    self.recipe = recipe
    self    
  end
  
  def viewDidLoad
    super
    
    self.title = self.recipe[:name]
    self.view.backgroundColor = UIColor.whiteColor

    label = UITextView.alloc.initWithFrame([[10, 10], [300, 100]])
    label.text = "Tasting Notes: #{self.recipe[:tasting_notes]}"
    label.backgroundColor = UIColor.clearColor
    label.center = [self.view.frame.size.width / 2, 100]
    self.view.addSubview(label)
    
  end
  
end