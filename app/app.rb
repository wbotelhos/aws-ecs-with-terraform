# frozen_string_literal: true

class App < Sinatra::Base
  get "/" do
    ENV.fetch("MESSAGE", "Message ENV missing.")
  end
end
