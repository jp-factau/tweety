Rails.application.routes.draw do
  root to: "welcome#index"

  controller :users do 
    get "/usuarios/novo", action: :new, as: :new_user
    post "/usuarios/novo", action: :create, as: false
    get "/usuarios/:id", action: :show, as: :user
  end

  controller :sessions do
    get "/login", action: :new, as: :new_session
    post "/login", action: :create, as: false
    delete "/logout", action: :destroy, as: :destroy_session
  end

  controller :messages do
    get "/mensagem/nova", action: :new, as: :new_message
    post "/mensagem/nova", action: :create, as: false
  end
end
