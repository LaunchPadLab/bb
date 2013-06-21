class RecipeDetailController < UIViewController
  
  attr_accessor :selected_recipe, :recipe
    
  def initWithRecipe(selected_recipe)
    initWithNibName(nil, bundle: nil)
    self.selected_recipe = selected_recipe
    self    
  end
  
  def viewDidLoad
    super
    
    self.title = self.selected_recipe[:name]
    self.view.backgroundColor = UIColor.whiteColor
    
    @loading = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray)
    @loading.frame = [[0, 0], [self.view.bounds.size.width, 100]]
    @loading.startAnimating
    self.view.addSubview(@loading)
     
    Recipe.find(selected_recipe) do |recipe|
      self.recipe = recipe
      @loading.stopAnimating
      @loading.removeFromSuperview
      label = UITextView.alloc.initWithFrame([[10, 10], [300, 100]])
      label.text = "Tasting Notes: #{self.recipe[:tasting_notes]}"
      label.backgroundColor = UIColor.clearColor
      label.center = [self.view.frame.size.width / 2, 100]
      self.view.addSubview(label)
    end
  end
  
end