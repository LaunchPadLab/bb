class FullRecipeController < UIViewController
  
  attr_accessor :request, :load_count, :loading
  
  def initWithRequest(request)
    initWithNibName(nil, bundle: nil)
    self.request = request
    self
  end
  
  def viewDidLoad
    super
    
    self.load_count = 0
    
    self.title = "Full Recipe"
    self.navigationController.navigationBar.topItem.title = "Back"
    # 
    # @loading = UIActivityIndicatorView.alloc.initWithActivityIndicatorStyle(UIActivityIndicatorViewStyleGray)
    # @loading.frame = [[0, 0], [self.view.bounds.size.width, 100]]
    # @loading.startAnimating
    # self.loading = @loading
    # self.view.addSubview(@loading)
    
    web_view = UIWebView.alloc.initWithFrame([[0,0], [self.view.frame.size.width, self.view.frame.size.height]])
    web_view.loadRequest(self.request)
    web_view.scalesPageToFit = true
    self.view.addSubview(web_view)
    
  end
  
  # def webViewDidStartLoad(webView)
  #   self.load_count += 1
  # end

  # def webViewDidFinishLoad(webView)
  #   self.load_count -= 1
  # 
  #   if (load_count > 0)
  #     self.loading.stopAnimating
  #     self.loading.removeFromSuperview
  #   end
  # end
  
end