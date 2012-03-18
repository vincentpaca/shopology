class User < ActiveRecord::Base
  
  attr_accessible :name, :email
  attr_protected :provider, :uid, :token

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.email = auth["info"]["email"]
      user.token = auth["credentials"]["token"]
    end
  end
  
  def facebook
    #FbGraph::User.new('me', :access_token => token)
    me = FbGraph::User.me(token)
    me.feed!(
      :message => 'Updating via FbGraph'
    )
  end
  
  
end
