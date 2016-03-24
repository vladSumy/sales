class ApplicationController < ActionController::API
  after_filter :set_access_control_headers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
  def render_resource_data(resource, options = {})
    render json: options.merge({ data: resource})
  end
end
