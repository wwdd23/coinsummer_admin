class Post
  include Mongoid::Document
  field :content, type: String
  embedded_in :post
end
