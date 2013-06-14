class Recipe
  
  def self.find_all(&block)
    BW::HTTP.get("#{API.url}recipes.json", payload: nil) do |response|      
      recipes = BW::JSON.parse(response.body.to_str)
      block.call(recipes)
    end
  end
  
  def self.find(recipe, &block)
    BW::HTTP.get("#{API.url}recipes/#{recipe[:id]}.json", payload: nil) do |response|      
      recipe = BW::JSON.parse(response.body.to_str)
      block.call(recipe)
    end
  end
  
end