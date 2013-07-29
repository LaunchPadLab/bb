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
      
      title = UILabel.alloc.initWithFrame([[100, 0], [200, 100]])
      title.text = "#{self.recipe[:name]}"
      title.backgroundColor = UIColor.clearColor
      self.view.addSubview(title)      
      
      style = UILabel.alloc.initWithFrame([[100, 20], [200, 100]])
      style.text = "#{self.recipe[:style]}"
      style.backgroundColor = UIColor.clearColor
      self.view.addSubview(style)
      
      type = UILabel.alloc.initWithFrame([[100, 40], [200, 100]])
      type.text = "#{self.recipe[:recipe_type]}"
      type.backgroundColor = UIColor.clearColor
      self.view.addSubview(type)
      
      label = UITextView.alloc.initWithFrame([[10, 10], [300, 100]])
      label.text = "Tasting Notes: #{self.recipe[:tasting_notes]}"
      label.backgroundColor = UIColor.clearColor
      label.center = [self.view.frame.size.width / 2, 180]
      label.editable = false
      self.view.addSubview(label)
      
      glass_image = UIImage.imageNamed('pint_glass.png')
      glass_view = UIImageView.alloc.initWithImage(glass_image)
      glass_view.backgroundColor = beer_color(self.recipe[:color]) 
      glass_view.center = [45, 70]
      self.view.addSubview(glass_view)
      
      abv = UILabel.alloc.initWithFrame([[20, 200], [200, 100]])
      abv.text = "ABV: #{self.recipe[:abv][0..5]}%"
      abv.backgroundColor = UIColor.clearColor
      self.view.addSubview(abv)
      
      ibu = UILabel.alloc.initWithFrame([[20, 220], [200, 100]])
      ibu.text = "IBU: #{self.recipe[:ibu]}"
      ibu.backgroundColor = UIColor.clearColor
      self.view.addSubview(ibu) 
      
      detail_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
      detail_button.setTitle('See the full recipe', forState:UIControlStateNormal)
      detail_button.setTitle('Loading...', forState:UIControlStateDisabled)
      detail_button.sizeToFit
      detail_button.frame = [[60, 300], [200, 30]]
      self.view.addSubview(detail_button)
      
      detail_button.addTarget(self, action: 'load_full_recipe', forControlEvents:UIControlEventTouchUpInside)
      
    end
  end
  
  def beer_color(color)
    beer = Beer.new(color)
    beer_color = beer.color_to_hex
    beer_color.to_color
  end
  
  def load_full_recipe
    url_string = "#{API.url}recipes/#{self.recipe[:id]}"
    url = NSURL.alloc.initWithString(url_string)
    request = NSURLRequest.alloc.initWithURL(url)
    # UIApplication.sharedApplication.openURL(url)
    
    self.navigationController.pushViewController(FullRecipeController.alloc.initWithRequest(request), animated:true)
    self.navigationController.navigationBar.tintColor = UIColor.blackColor
  end
  
end