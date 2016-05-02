Rails.application.routes.draw do
  scope "(:locale)", locale: /en|zh-CN/ do
    resources :visitors, only: [:new, :create]
    resources :contacts, only: [:new, :create]
  end
    root to: 'visitors#new'
    get '/:locale' => 'visitors#new'
end
