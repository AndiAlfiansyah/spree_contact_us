Spree::Core::Engine.add_routes do
  resources :contacts, :controller => 'contact_us/contacts', :only => [:new, :create]
  get 'contact-us' => 'contact_us/contacts#new', :as => :contact_us
  get 'admin/contact-information/edit' => 'admin/contact_informations#edit', :as => :edit_contact_information
  match 'admin/contact-information/:id' => 'admin/contact_informations#update', :as => :contact_information, via: [:put, :patch]
end
