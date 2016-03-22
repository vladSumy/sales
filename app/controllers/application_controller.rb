class ApplicationController < ActionController::API
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  def render_resource_data(resource, options = {})
    render json: options.merge({ data: resource, root: :resource })
  end
end
