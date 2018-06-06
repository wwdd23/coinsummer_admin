class New
  include Mongoid::Document
  include Mongoid::Timestamps::Created
  include Mongoid::Timestamps::Updated
  include Mongoid::Attributes::Dynamic

  include Mongoid::History::Trackable


  belongs_to :category ,  :foreign_key => "category_id"  # 分类


  field :title, type: String
  field :content, type: String
  field :description, type: String
  field :pubdated_at, type: DateTime
  field :pv, type: Integer
  field :uv, type: Integer
  field :tag, type: String
  field :source, type: String
  field :url, type: String
  field :img_url, type: String
  field :post_uniq_id, type: String

  

   # telling Mongoid::History how you want to track changes
  # dynamic fields will be tracked automatically (for MongoId 4.0+ you should include Mongoid::Attributes::Dynamic to your model)
  #track_history   :on => [:title, :content],       # track title and body fields only, default is :all
  #                :modifier_field => :modifier, # adds "belongs_to :modifier" to track who made the change, default is :modifier, set to nil to not create modifier_field
  #                :modifier_field_inverse_of => :nil, # adds an ":inverse_of" option to the "belongs_to :modifier" relation, default is not set
  #                :modifier_field_optional => true, # marks the modifier relationship as optional (requires Mongoid 6 or higher)
  #                :version_field => :version,   # adds "field :version, :type => Integer" to track current version, default is :version
  #                :track_create  => true,       # track document creation, default is true
  #                :track_update  => true,       # track document updates, default is true
  #                :track_destroy => true        # track document destruction, default is true

end

