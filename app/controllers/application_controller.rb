class ApplicationController < ActionController::Base

  # protect_from_forgery with: :exception
  after_action :server_push_headers

  def server_push_headers
    # Cloudflare HTTP2 Server Push: https://blog.cloudflare.com/announcing-support-for-http-2-server-push-2/
    if request.format.html? # only on html pages
      application_css = view_context.asset_path('application.css')

      assets = [
        "<#{application_css}>; rel=preload; as=style"
      ]
      response.headers['Link'] = assets
    end
  end

end
