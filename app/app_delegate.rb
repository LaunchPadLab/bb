class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    
    @menuViewController = MenuViewController.alloc.initWithNibName(nil, bundle: nil)
    
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
  
  def slideMenuButtonTouched(controller)
    viewSize = controller.view.bounds.size

    UIGraphicsBeginImageContextWithOptions(viewSize, false, 0.0)
    controller.view.layer.renderInContext(UIGraphicsGetCurrentContext())

    image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()

    @menuViewController.screenShotImage = image
    @window.rootViewController = @menuViewController 
  end

end
