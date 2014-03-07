class Identity
    include Neo4j::ActiveNode
   property :id
   property :uid
   property :provider

   has_one(:user).from(:identities)

  def self.find_with_omniauth(auth)
    find provider: auth[:provider], uid: auth[:uid]
  end

  def self.create_with_omniauth(auth)
    create(uid: auth[:uid], provider: auth[:provider])
  end

end