describe RdioApi::Client do
  
  it "should use the correct url for api requests" do
    @client = RdioApi::Client.new
    @client.api_url.should eq('http://api.rdio.com/1/')
  end
  
  it "should keep oauth token for requests" do
    @client = RdioApi::Client.new(:access_token => 'rdiooauth')
    @client.access_token.should eq('rdiooauth')
  end
  
  it "should keep consumer key/secret for requests" do
    @client = RdioApi::Client.new(:consumer_key => "consumerkey", :consumer_secret => "consumersecret")
    @client.consumer_key.should eq("consumerkey")
    @client.consumer_secret.should eq("consumersecret")
  end
end