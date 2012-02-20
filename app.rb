require 'nokogiri'

Tilt.prefer Tilt::MarukuTemplate

module Nesta
  class App

    # Route to theme assets
    use Rack::Static, :urls => ["/clean", "/favicon.ico", "/apple-touch-icon.png", "/apple-touch-icon-precomposed.png"], :root => "themes/clean/public"

    # Provide page TOC    
    def toc(page, toc_template = :table_of_contents)
      toc_headers = Nokogiri::HTML(page.body).css('h2').inject({}) do |mappings, header_node|
        mappings[header_node.attr('id')] = header_node.content
        mappings
      end
      haml(toc_template, :layout => false, :locals => { :toc_headers => toc_headers })
    end
  end
end