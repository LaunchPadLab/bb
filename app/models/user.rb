class User
  
  def self.sign_in(params)
    # BW::HTTP.post("#{API.url}users/sign_in", payload: { user: { email: params[:email], password: params[:password] } }) do |response|      
    #   puts response
    # end
  end
  
end