# RailsAdmin config file. Generated on December 29, 2013 22:45
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################

  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['New Earth Portal', 'Admin']
  # or for a more dynamic name:
  # config.main_app_name = Proc.new { |controller| [Rails.application.engine_name.titleize, controller.params['action'].titleize] }

  # RailsAdmin may need a way to know who the current user is]
  config.current_user_method { current_member } # auto-generated
  
  config.authorize_with :cancan
  
  # If you want to track changes on your models:
  # config.audit_with :history, 'Member'

  # Or with a PaperTrail: (you need to install it first)
  # config.audit_with :paper_trail, 'Member'

  # Display empty fields in show views:
  # config.compact_show_view = false

  # Number of default rows per-page:
  # config.default_items_per_page = 20

  # Exclude specific models (keep the others):
  # config.excluded_models = ['Content', 'Member', 'Page', 'PageTemplate', 'Path', 'User', 'Value']

  # Include specific models (exclude the others):
  # config.included_models = ['Content', 'Member', 'Page', 'PageTemplate', 'Path', 'User', 'Value']

  # Label methods for model instances:
  config.label_methods = [:username] + config.label_methods # Default is [:name, :title]


  ################  Model configuration  ################

  # Each model configuration can alternatively:
  #   - stay here in a `config.model 'ModelName' do ... end` block
  #   - go in the model definition file in a `rails_admin do ... end` block

  # This is your choice to make:
  #   - This initializer is loaded once at startup (modifications will show up when restarting the application) but all RailsAdmin configuration would stay in one place.
  #   - Models are reloaded at each request in development mode (when modified), which may smooth your RailsAdmin development workflow.


  # Now you probably need to tour the wiki a bit: https://github.com/sferik/rails_admin/wiki
  # Anyway, here is how RailsAdmin saw your application's models when you ran the initializer:



  ###  Content  ###

  # config.model 'Content' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your content.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :description, :string 
  #     configure :parse_on_cache, :integer 
  #     configure :parse_on_retrieve, :integer 
  #     configure :execute_on_cache, :integer 
  #     configure :execute_on_retrieve, :integer 
  #     configure :body, :text 
  #     configure :date_created, :datetime 
  #     configure :date_updated, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Member  ###

  # config.model 'Member' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your member.rb model definition

  #   # Found associations:

  #     configure :user, :has_one_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status, :integer 
  #     configure :title, :string 
  #     configure :first_name, :string 
  #     configure :middle_name, :string 
  #     configure :last_name, :string 
  #     configure :company, :string 
  #     configure :email, :string 
  #     configure :email_address_2, :string 
  #     configure :address, :string 
  #     configure :address2, :string 
  #     configure :city, :string 
  #     configure :state, :string 
  #     configure :zip, :string 
  #     configure :country, :string 
  #     configure :day_phone, :string 
  #     configure :home_phone, :string 
  #     configure :timezone_id, :integer 
  #     configure :fax, :string 
  #     configure :skype, :string 
  #     configure :facebook, :string 
  #     configure :bio, :text 
  #     configure :skills, :text 
  #     configure :interests, :text 
  #     configure :community_coordinator, :integer 
  #     configure :declaration_signed, :integer 
  #     configure :date_joined, :date 
  #     configure :date_suspended, :date 
  #     configure :date_created, :datetime 
  #     configure :date_updated, :datetime 
  #     configure :created_by_user_id, :integer 
  #     configure :updated_by_user_id, :integer 
  #     configure :password, :password         # Hidden 
  #     configure :password_confirmation, :password         # Hidden 
  #     configure :reset_password_token, :string         # Hidden 
  #     configure :reset_password_sent_at, :datetime 
  #     configure :remember_created_at, :datetime 
  #     configure :sign_in_count, :integer 
  #     configure :current_sign_in_at, :datetime 
  #     configure :last_sign_in_at, :datetime 
  #     configure :current_sign_in_ip, :string 
  #     configure :last_sign_in_ip, :string 
  #     configure :confirmation_token, :string 
  #     configure :confirmed_at, :datetime 
  #     configure :confirmation_sent_at, :datetime 
  #     configure :unconfirmed_email, :string 
  #     configure :created_at, :datetime 
  #     configure :updated_at, :datetime 
  #     configure :given_name, :string 
  #     configure :legal_name, :string 
  #     configure :birth_country, :string 
  #     configure :signed_declaration_at, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Page  ###

  # config.model 'Page' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your page.rb model definition

  #   # Found associations:

  #     configure :path, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status, :integer 
  #     configure :requires_login, :integer 
  #     configure :requires_ssl, :integer 
  #     configure :groups_allowed_from, :integer 
  #     configure :groups_allowed, :string 
  #     configure :name, :string 
  #     configure :version, :integer 
  #     configure :path_id, :integer         # Hidden 
  #     configure :show_in_section_menu, :integer 
  #     configure :section_menu_sort_order, :integer 
  #     configure :section_menu_link_text, :string 
  #     configure :page_template_id, :integer 
  #     configure :publish_type, :integer 
  #     configure :template, :string 
  #     configure :page_title, :string 
  #     configure :file_name, :string 
  #     configure :hide_from_site_search, :integer 
  #     configure :search_description, :text 
  #     configure :primary_content, :text 
  #     configure :code_top, :text 
  #     configure :html_top, :text 
  #     configure :code_bottom, :text 
  #     configure :html_bottom, :text 
  #     configure :template_html, :text 
  #     configure :properties, :text 
  #     configure :show_on_desktop, :integer 
  #     configure :open_on_startup, :integer 
  #     configure :date_created, :datetime 
  #     configure :date_updated, :datetime 
  #     configure :icon_file_name, :string 
  #     configure :window_width, :integer 
  #     configure :window_height, :integer 
  #     configure :link_extra, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  PageTemplate  ###

  # config.model 'PageTemplate' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your page_template.rb model definition

  #   # Found associations:

  #     configure :paths, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :name, :string 
  #     configure :code_top, :text 
  #     configure :html_top, :text 
  #     configure :code_bottom, :text 
  #     configure :html_bottom, :text 
  #     configure :date_created, :datetime 
  #     configure :date_updated, :datetime 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Path  ###

  # config.model 'Path' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your path.rb model definition

  #   # Found associations:

  #     configure :page_template, :belongs_to_association 
  #     configure :pages, :has_many_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :status, :integer 
  #     configure :requires_login, :integer 
  #     configure :requires_ssl, :integer 
  #     configure :groups_allowed, :string 
  #     configure :show_as_section, :integer 
  #     configure :section, :string 
  #     configure :path, :string 
  #     configure :title, :string 
  #     configure :page_template_id, :integer         # Hidden 
  #     configure :template, :string 
  #     configure :sort_order, :integer 
  #     configure :date_created, :datetime 
  #     configure :date_updated, :datetime 
  #     configure :code_top, :text 
  #     configure :code_bottom, :text 
  #     configure :html_top, :text 
  #     configure :html_bottom, :text 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  User  ###

  # config.model 'User' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your user.rb model definition

  #   # Found associations:

  #     configure :member, :belongs_to_association 

  #   # Found columns:

  #     configure :id, :integer 
  #     configure :type, :integer 
  #     configure :status, :integer 
  #     configure :member_id, :integer         # Hidden 
  #     configure :username, :string 
  #     configure :visits, :integer 
  #     configure :gender, :string 
  #     configure :title, :string 
  #     configure :first_name, :string 
  #     configure :last_name, :string 
  #     configure :company, :string 
  #     configure :email_address, :string 
  #     configure :address, :string 
  #     configure :address2, :string 
  #     configure :city, :string 
  #     configure :state, :string 
  #     configure :zip, :string 
  #     configure :country, :string 
  #     configure :timezone_id, :integer 
  #     configure :day_phone, :string 
  #     configure :home_phone, :string 
  #     configure :fax, :string 
  #     configure :skype, :string 
  #     configure :shipping_title, :string 
  #     configure :shipping_first_name, :string 
  #     configure :shipping_last_name, :string 
  #     configure :shipping_company, :string 
  #     configure :shipping_address, :string 
  #     configure :shipping_address2, :string 
  #     configure :shipping_city, :string 
  #     configure :shipping_state, :string 
  #     configure :shipping_zip, :string 
  #     configure :shipping_country, :string 
  #     configure :shipping_day_phone, :string 
  #     configure :shipping_home_phone, :string 
  #     configure :shipping_fax, :string 
  #     configure :shipping_email_address, :string 
  #     configure :date_created, :datetime 
  #     configure :date_updated, :datetime 
  #     configure :notes, :text 
  #     configure :verified, :integer 
  #     configure :imported, :integer 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end


  ###  Value  ###

  # config.model 'Value' do

  #   # You can copy this to a 'rails_admin do ... end' block inside your value.rb model definition

  #   # Found associations:



  #   # Found columns:

  #     configure :name, :string 
  #     configure :value, :string 
  #     configure :description, :string 
  #     configure :order_by, :integer 
  #     configure :id, :integer 
  #     configure :valuecol, :string 

  #   # Cross-section configuration:

  #     # object_label_method :name     # Name of the method called for pretty printing an *instance* of ModelName
  #     # label 'My model'              # Name of ModelName (smartly defaults to ActiveRecord's I18n API)
  #     # label_plural 'My models'      # Same, plural
  #     # weight 0                      # Navigation priority. Bigger is higher.
  #     # parent OtherModel             # Set parent model for navigation. MyModel will be nested below. OtherModel will be on first position of the dropdown
  #     # navigation_label              # Sets dropdown entry's name in navigation. Only for parents!

  #   # Section specific configuration:

  #     list do
  #       # filters [:id, :name]  # Array of field names which filters should be shown by default in the table header
  #       # items_per_page 100    # Override default_items_per_page
  #       # sort_by :id           # Sort column (default is primary key)
  #       # sort_reverse true     # Sort direction (default is true for primary key, last created first)
  #     end
  #     show do; end
  #     edit do; end
  #     export do; end
  #     # also see the create, update, modal and nested sections, which override edit in specific cases (resp. when creating, updating, modifying from another model in a popup modal or modifying from another model nested form)
  #     # you can override a cross-section field configuration in any section with the same syntax `configure :field_name do ... end`
  #     # using `field` instead of `configure` will exclude all other fields and force the ordering
  # end

end
