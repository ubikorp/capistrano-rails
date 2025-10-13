class ApplicationController < ActionController::Base
  def index
    server = defined?(Falcon) ? "Falcon" : "Puma"

    render plain: "Hello, world! #{server} running on #{Socket.gethostname} with PID #{Process.pid} and Ruby #{RUBY_VERSION} as #{ENV['USER']}"
  end
end
