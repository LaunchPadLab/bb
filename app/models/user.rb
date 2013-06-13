class User
  
  def self.url
    "http://www.thebrewersbarrel.com/users/"
  end
  
  def self.sign_in(params)
    BW::HTTP.post("#{url}sign_in.json", payload: { user: { email: params[:email], password: params[:password] } }) do |response|      
      puts response
    end
  end
  
end