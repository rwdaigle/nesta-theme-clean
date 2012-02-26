begin
  # Table of contents support
  require 'maruku'
  require 'nokogiri'

  # Maruku gives us auto-ids w/ H2 elements (for use by TOC generation)
  Tilt.prefer Tilt::MarukuTemplate
rescue LoadError => e
  $stderr.puts e.to_s
end

begin
  # Syntax highlighting support
  require 'rack/pygmoku'
  require 'rubypython'

  # Default python (2.7) seems to have issues on Heroku:
  # https://github.com/tmm1/pygments.rb/issues/10
  RubyPython.configure :python_exe => 'python2.6'
rescue LoadError => e
  $stderr.puts e.to_s
end

module Nesta
  class App

    # Support pygments syntax highlighting w/ <pre><code lang="ruby"></code></pre> blocks
    use Rack::Pygmoku, { :lexer_attr => 'lang' } if Rack.const_defined?(:Pygmoku)

    # Route to theme assets
    use Rack::Static, :urls => ["/clean", "/favicon.ico", "/apple-touch-icon.png", "/apple-touch-icon-precomposed.png"], :root => "themes/clean/public"

    helpers do
      def can_generate_toc?
        [:Maruku, :Nokogiri].all? { |cls| Object.const_defined?(cls) }
      end

      # Provide page TOC    
      def toc(page, toc_template = :table_of_contents)
        return nil unless can_generate_toc?
        headings = Nokogiri::HTML(page.body(self)).css('h2')
        toc_headers = headings.inject({}) do |mappings, header_node|
          mappings[header_node.attr('id')] = header_node.content
          mappings
        end
        haml(toc_template, :layout => false, :locals => { :toc_headers => toc_headers })
      end
    end
  end
end
