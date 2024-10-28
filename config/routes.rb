Rails.application.routes.draw do
  get 'hello/index'
  get 'hello/login_check'
  devise_for :accounts
  
  devise_scope :account do
    get 'accounts/sign_out' => "devise/sessions#destroy"
  end
end
