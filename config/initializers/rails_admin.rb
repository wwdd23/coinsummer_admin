RailsAdmin.config do |config|


  config.main_app_name = ["CoinSummer", "BackOffice"]
  # or something more dynamic
  config.main_app_name = Proc.new { |controller| [ "CoinSummer", "BackOffice - #{controller.params[:action].try(:titleize)}" ] }
  config.excluded_models = ['ActiveStorage::Blob', 'ActiveStorage::Attachment']

  #config.included_models = [User, New,]


  config.model New do

    list do 
      field :title
      field :category
      field :created_at
      field :pubdated_at
      field :description
      field :pv
      field :uv
    end

    show do 
      field :title
      field :category
      field :pv
      field :uv
      field :created_at
      field :pubdated_at
      field :description
    end

    edit do
      field :title
      field :category
      field :content, :ck_editor
      field :description
      field :source
      field :pubdated_at
      field :url
    end
  end

  # f.input :content, :lable => "内容", as: :ckeditor , input_html: { ckeditor: {  height: '600px', width: '900px', toobar: {name: 'styles', items: [ 'Styles', 'Format', 'Font', 'FontSize' ]}}}
  config.model Category do
    object_label_method do
      :custom_label_method
    end
  end

  Category.class_eval do
    def custom_label_method
      "#{self.name_cn}"
    end
  end



  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)


  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  #config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    #history_index
    #history_show
  end
end
