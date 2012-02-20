module Nesta
  class App

    # Route to theme assets
    use Rack::Static, :urls => ["/clean", "/favicon.ico", "/apple-touch-icon.png", "/apple-touch-icon-precomposed.png"], :root => "themes/clean/public"
  end
end