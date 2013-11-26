Bites::Application.routes.draw do
  
  scope :api do
    
    resources :users, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
      get ':id' => 'users#index', on: :collection 
       
      resources :reviews, except: [ :show, :new, :edit ],
        defaults: { format: :json } do
        get ':id' => 'reviews#index', on: :collection
      end
    end

    resources :reviews, except: [ :show, :new, :edit ],
      defaults: { format: :json } do
        get ':id' => 'reviews#index', on: :collection
    end

  end
  
  root 'site#index'

end
