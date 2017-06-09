Rails.application.routes.draw do
  # Routes for the Favoritetutor resource:
  # CREATE
  get "/favoritetutors/new", :controller => "favoritetutors", :action => "new"
  post "/create_favoritetutor", :controller => "favoritetutors", :action => "create"
  post "/create_favoritetutor/from_index", :controller => "favoritetutors", :action => "autocreate"

  # READ
  get "/favoritetutors", :controller => "favoritetutors", :action => "index"
  get "/favoritetutors/:id", :controller => "favoritetutors", :action => "show"

  # UPDATE
  get "/favoritetutors/:id/edit", :controller => "favoritetutors", :action => "edit"
  post "/update_favoritetutor/:id", :controller => "favoritetutors", :action => "update"

  # DELETE
  get "/delete_favoritetutor/:id", :controller => "favoritetutors", :action => "destroy"
  #------------------------------

  # Routes for the Country resource:
  # CREATE
  get "/countries/new", :controller => "countries", :action => "new"
  post "/create_country", :controller => "countries", :action => "create"

  # READ
  get "/countries", :controller => "countries", :action => "index"
  get "/countries/:id", :controller => "countries", :action => "show"

  # UPDATE
  get "/countries/:id/edit", :controller => "countries", :action => "edit"
  post "/update_country/:id", :controller => "countries", :action => "update"

  # DELETE
  get "/delete_country/:id", :controller => "countries", :action => "destroy"
  #------------------------------

  # Routes for the Review resource:
  # CREATE
  get "/reviews/new", :controller => "reviews", :action => "new"
  post "/create_review", :controller => "reviews", :action => "create"

  # READ
  get "/reviews", :controller => "reviews", :action => "index"
  get "/reviews/:id", :controller => "reviews", :action => "show"

  # UPDATE
  get "/reviews/:id/edit", :controller => "reviews", :action => "edit"
  post "/update_review/:id", :controller => "reviews", :action => "update"

  # DELETE
  get "/delete_review/:id", :controller => "reviews", :action => "destroy"
  #------------------------------

  # Routes for the Language resource:
  # CREATE
  get "/languages/new", :controller => "languages", :action => "new"
  post "/create_language", :controller => "languages", :action => "create"

  # READ
  get "/languages", :controller => "languages", :action => "index"
  get "/languages/:id", :controller => "languages", :action => "show"

  # UPDATE
  get "/languages/:id/edit", :controller => "languages", :action => "edit"
  post "/update_language/:id", :controller => "languages", :action => "update"

  # DELETE
  get "/delete_language/:id", :controller => "languages", :action => "destroy"
  #------------------------------

  # Routes for the Skill resource:
  # CREATE
  get "/skills/new", :controller => "skills", :action => "new"
  post "/create_skill", :controller => "skills", :action => "create"

  # READ
  get "/skills", :controller => "skills", :action => "index"
  get "/skills/:id", :controller => "skills", :action => "show"

  # UPDATE
  get "/skills/:id/edit", :controller => "skills", :action => "edit"
  post "/update_skill/:id", :controller => "skills", :action => "update"

  # DELETE
  get "/delete_skill/:id", :controller => "skills", :action => "destroy"
  #------------------------------

  # Routes for the Tutor resource:
  # CREATE
  get "/tutors/new", :controller => "tutors", :action => "new"
  post "/create_tutor", :controller => "tutors", :action => "create"

  # READ
  get "/tutors", :controller => "tutors", :action => "index"
  root to: "tutors#index"
  get "/tutors/:id", :controller => "tutors", :action => "show"

  # UPDATE
  get "/tutors/:id/edit", :controller => "tutors", :action => "edit"
  post "/update_tutor/:id", :controller => "tutors", :action => "update"

  # DELETE
  get "/delete_tutor/:id", :controller => "tutors", :action => "destroy"
  #------------------------------

  # Routes for the Tutor_Reviews resource

  # CREATE
  get "/tutor_reviews/:id/new", :controller => "tutorreviews", :action => "new"

  # READ
  get "/tutor_reviews/:id", :controller => "tutorreviews", :action => "show"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
