class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.makeKeyAndVisible
    
    @window.rootViewController = SessionsController.alloc.initWithNibName(nil, bundle: nil)    
    
    true
  end
  
  def textFieldShouldReturn(textField)
    textField.resignFirstResponder
    false
  end

end
