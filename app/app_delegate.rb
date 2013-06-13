class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    
    @sessions_controller = SessionsController.alloc.initWithNibName(nil, bundle: nil)
    @navigation_controller = UINavigationController.alloc.initWithRootViewController(@sessions_controller)
    @navigation_controller.navigationBarHidden = true
  
    @window.rootViewController = @navigation_controller  
    @window.makeKeyAndVisible
    
    true
  end
  
  def textFieldShouldReturn(textField)
    textField.resignFirstResponder
    false
  end

end
