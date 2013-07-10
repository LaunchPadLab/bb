class RecipesController < UIViewController
  
  attr_accessor :recipes
  
  def viewDidLoad
     super
     
     self.title = "Recipes"
     self.view.backgroundColor = UIColor.whiteColor
     
     # navigationItem.leftBarButtonItem = UIBarButtonItem.alloc.initWithTitle("=", style:UIBarButtonItemStylePlain, target:self, action:"showMenu")

     @loading = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray)
     @loading.frame = [[0, 0], [self.view.bounds.size.width, 100]]
     @loading.startAnimating
     self.view.addSubview(@loading)
     
     Recipe.find_all do |recipes|
       self.recipes = recipes
       @loading.stopAnimating
       @loading.removeFromSuperview
       @table = UITableView.alloc.initWithFrame([[0, 0], [self.view.bounds.size.width, self.view.bounds.size.height]], style:UITableViewStylePlain)
       self.view.addSubview @table
       @table.dataSource = self
       @table.delegate = self
     end
     
   end
   
   def tableView(tableView, cellForRowAtIndexPath: indexPath)
     # return the UITableViewCell for the row
     @reuseIdentifier ||= "CELL_IDENTIFIER"

     cell = tableView.dequeueReusableCellWithIdentifier(@reuseIdentifier) || begin
       UITableViewCell.alloc.initWithStyle(UITableViewCellStyleDefault, reuseIdentifier:@reuseIdentifier)
     end

     # put your data in the cell
     cell.textLabel.text = self.recipes[indexPath.row][:name]
     cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator

     cell
   end

   def tableView(tableView, numberOfRowsInSection: section)
     @recipes.count
   end
   
   def tableView(tableView, didSelectRowAtIndexPath:indexPath)
     tableView.deselectRowAtIndexPath(indexPath, animated: true)
     
     selected_recipe = self.recipes[indexPath.row]
     self.navigationController.pushViewController(RecipeDetailController.alloc.initWithRecipe(selected_recipe), animated:true)

   end
   
   def showMenu
     App.delegate.slideMenuButtonTouched(self)
   end
   
end