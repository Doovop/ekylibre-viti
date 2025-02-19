Ekylibre::Viti::Engine.routes.draw do
  # Routes pour DRM
  resources :drm do
    collection do
      get :new_draft
      post :validate
      post :submit
    end
  end

  # Routes pour DSA
  resources :dsa do
    collection do
      post :validate
      post :submit
    end
  end

  # Routes pour DAE
  resources :dae do
    collection do
      post :validate
      post :submit
    end
  end

  # Routes pour la comptabilité matière
  resources :stock_accounts do
    collection do
      get :inventory
      get :movements
      get :report
    end
  end
end