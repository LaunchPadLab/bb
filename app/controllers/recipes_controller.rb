class RecipesController < UIViewController
  
  attr_accessor :recipes
  
  def initWithRecipes
    initWithNibName(nil, bundle: nil)
    self.recipes = Recipe.find_all(self) do |recipe|
      puts 'hello'
    end
    self
  end
  
  def viewDidLoad
     super
     
     self.title = "Recipes"
     
     @table = UITableView.alloc.initWithFrame(self.view.bounds)
     self.view.addSubview @table
     
     @table.dataSource = self
     @table.delegate = self
     
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

     self.navigationController.pushViewController(RecipeDetailController.alloc.initWithRecipe(self.recipes[indexPath.row][:name]), animated:true)
     self.navigationController.navigationBar.tintColor = UIColor.blackColor
   end

end