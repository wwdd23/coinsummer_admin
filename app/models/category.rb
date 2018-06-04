class Category
  include Mongoid::Document

  field :category_id, type: Integer
  field :name, type: String
  field :name_cn, type: String


end
