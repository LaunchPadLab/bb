class FullRecipeController < UIViewController
  
  attr_accessor :request
  
  def initWithRequest(request)
    initWithNibName(nil, bundle: nil)
    self.request = request
    self
  end
  
  def viewDidLoad
    super
    
    self.title = "Full Recipe"
    self.navigationController.navigationBar.topItem.title = "Back"
    
    web_view = UIWebView.alloc.initWithFrame([[0,0], [self.view.frame.size.width, self.view.frame.size.height]])
    web_view.loadRequest(self.request)
    web_view.scalesPageToFit = true
    self.view.addSubview(web_view)
    
  end
  
end