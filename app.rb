require 'sinatra/reloader'
require 'sinatra/base'
require_relative './lib/bookmark.rb'

class Bookmarkmanager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    end
    get '/' do
      "Hello world!"
    end
    get '/bookmarks' do
      @bookmarks = Bookmark.all
      erb :bookmarks
    end

    run! if app_file == $0
end
