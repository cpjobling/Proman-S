
require 'sinatra'
require 'haml'

class Application < Sinatra::Base
  set :app_file, __FILE__
  set :inline_templates, true

  get '/' do
    haml :index
  end
end

__END__

@@ index
!!!
%html
  %head
    %title A test application
  %body
    %h1 Hello, world!