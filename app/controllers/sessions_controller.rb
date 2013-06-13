class SessionsController < UIViewController
  
  def viewDidLoad
    super
    
    set_background_color('#FBF3E1')
    
    font = UIFont.fontWithName("Inconsolata", size:24)
    font2 = UIFont.fontWithName("Inconsolata", size:16)
    
    label = UILabel.alloc.initWithFrame(CGRectZero)
    label.font = font
    label.text = "The Brewer's Barrel"
    label.backgroundColor = UIColor.clearColor
    label.sizeToFit
    label.center = [self.view.frame.size.width / 2, 100]
    self.view.addSubview(label)
    
    label2 = UILabel.alloc.initWithFrame(CGRectZero)
    label2.font = font2
    label2.text = "Great recipes & batches"
    label2.backgroundColor = UIColor.clearColor
    label2.sizeToFit
    label2.center = [self.view.frame.size.width / 2, label.frame.origin.y + label.frame.size.height + 20]
    self.view.addSubview(label2)
        
    login_view = UIView.alloc.initWithFrame([[30, 200], [260, 100]])
    login_view.backgroundColor = UIColor.whiteColor
    login_view.layer.cornerRadius = 10.0
    self.view.addSubview(login_view)
    
    @email_field = UITextField.alloc.initWithFrame(CGRectZero)
    @email_field.placeholder = "email address"
    @email_field.enablesReturnKeyAutomatically = true
    @email_field.returnKeyType = UIReturnKeyDone
    @email_field.autocapitalizationType = UITextAutocapitalizationTypeNone
    @email_field.sizeToFit
    @email_field.frame = [ [10, 10], [240, 50]]
    login_view.addSubview(@email_field)
    
    @email_field.delegate = App.delegate
    
    @password_field = UITextField.alloc.initWithFrame(CGRectZero)
    @password_field.placeholder = "password"
    @password_field.secureTextEntry = true
    @password_field.enablesReturnKeyAutomatically = true
    @password_field.returnKeyType = UIReturnKeyDone
    @password_field.autocapitalizationType = UITextAutocapitalizationTypeNone
    @password_field.sizeToFit
    @password_field.frame = [ [10, 60], [240, 50]]
    login_view.addSubview(@password_field)

    @password_field.delegate = App.delegate
    
    login_button = UIButton.buttonWithType(UIButtonTypeRoundedRect)
    login_button.setTitle('Sign In', forState:UIControlStateNormal)
    login_button.setTitle('Signing in...', forState:UIControlStateDisabled)
    login_button.sizeToFit
    login_button.frame = [[60, 320], [200, 30]]
    self.view.addSubview(login_button)
    
    login_button.addTarget(self, action: 'sign_in', forControlEvents:UIControlEventTouchUpInside)
  
  end
  
  def set_background_color(color)
    background_color = color.to_color
    self.view.backgroundColor = background_color
  end
  
  def sign_in
    # User.sign_in({ email: @email_field.text, password: @password_field.text })
    
    self.navigationController.pushViewController(RecipesController.alloc.initWithRecipes, animated:true)
    self.navigationController.navigationBarHidden = false
    self.navigationController.navigationBar.tintColor = UIColor.blackColor
    self.navigationController.navigationBar.items.each { |item| item.hidesBackButton = true }
  end
  
end