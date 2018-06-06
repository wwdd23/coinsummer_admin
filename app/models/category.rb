class Category
  include Mongoid::Document

  #has_many :new, inverse_of: :category_id
  #has_many :new, foreign_key: :category_id
  #has_many :new, :foreign_key => "type_id"# 分类

  has_many :new, primary_key: :category_id

  field :category_id, type: Integer
  field :name, type: String
  field :name_cn, type: String


end
