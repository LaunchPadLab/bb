class Recipe
  
  def self.find_all(controller, &block)
    # BW::HTTP.get("#{API.url}recipes.json", payload: nil) do |response|      
    #   controller.recipes = BW::JSON.parse(response.body.to_str)
    # end
    [{ name: 'Guinness'}, { name: 'Zombie Dust'}]
  end
  
end