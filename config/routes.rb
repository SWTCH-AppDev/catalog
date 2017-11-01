Rails.application.routes.draw do
  # Routes for the Coffee Bean resource:

  # CREATE
  get("/coffee_beans/new", { :controller => "coffee_beans", :action => "new_form" })
  get("/create_coffee_bean", { :controller => "coffee_beans", :action => "create_row" })

  # READ
  get("/coffee_beans", { :controller => "coffee_beans", :action => "index" })
  get("/coffee_beans/:id", { :controller => "coffee_beans", :action => "show" })

  # UPDATE
  get("/coffee_beans/:id/edit", { :controller => "coffee_beans", :action => "edit_form" })
  get("/update_coffee_bean/:id", { :controller => "coffee_beans", :action => "update_row" })

  # DELETE
  get("/delete_coffee_bean/:id", { :controller => "coffee_beans", :action => "destroy_row" })
  
  # INDEX
  get("/", { :controller => "coffee_beans", :action => "index" })

  #------------------------------

  # Routes for the Food resource:

  # CREATE
  get("/foods/new", { :controller => "foods", :action => "new_form" })
  get("/create_food", { :controller => "foods", :action => "create_row" })

  # READ
  get("/foods", { :controller => "foods", :action => "index" })
  get("/foods/:id", { :controller => "foods", :action => "show" })

  # UPDATE
  get("/foods/:id/edit", { :controller => "foods", :action => "edit_form" })
  get("/update_food/:id", { :controller => "foods", :action => "update_row" })

  # DELETE
  get("/delete_food/:id", { :controller => "foods", :action => "destroy_row" })
  #------------------------------


  # Routes for the List resource:

  # CREATE
  get("/lists/new", { :controller => "lists", :action => "new_form" })
  get("/create_list", { :controller => "lists", :action => "create_row" })

  # READ
  get("/lists", { :controller => "lists", :action => "index" })
  get("/lists/:id", { :controller => "lists", :action => "show" })

  # UPDATE
  get("/lists/:id/edit", { :controller => "lists", :action => "edit_form" })
  get("/update_list/:id", { :controller => "lists", :action => "update_row" })

  # DELETE
  get("/delete_list/:id", { :controller => "lists", :action => "destroy_row" })
  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
end
