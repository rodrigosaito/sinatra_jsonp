require "spec_helper"

describe "App" do

  it "returns ok" do
    get "/jsonp"

    expect(last_response).to be_ok
  end

  it "returns ok when referer is another site" do
    get "/jsonp", {}, { "HTTP_REFERER" => "http://google.com" }

    expect(last_response).to be_ok
  end

end
