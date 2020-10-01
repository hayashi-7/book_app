class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :search_book
  def search_book
    @p = Book.ransack(params[:q])  # 検索オブジェクトを生成
    @results = @p.result
  end
  protected

  def configure_permitted_parameters
    user_dates = %i[nickname first_name family_name gender age_id ]
    devise_parameter_sanitizer.permit :sign_up, keys: user_dates
  end
end
