class Relationship
    include Neo4j::ActiveNode
    property :follower_id, :type => Integer

    property :followed_id, :type => Integer
    property :created_at, :type => DateTime
    property :updated_at, :type => DateTime

   has_one(:user).from(:follower)
   has_one(:user).from(:followed)
end