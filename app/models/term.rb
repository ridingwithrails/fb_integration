require 'net/http'
require 'json'
class Term < ActiveRecord::Base
has_many :comments

  def fetch_data_fb
    logger.info "----------------#{term}"
    token = "2227470867|2.oRiofI2vXqrn4nAE3Jmm5A__.3600.1301616000-100002278244483|Fn5FiBNMLtpbMREQdao45MQqeNQ"
    path = "/#{term}/feed?access_token=#{token}"
    http = Net::HTTP.new('graph.facebook.com', 443)
    http.use_ssl = true
    res = http.get(path)
    logger.info res.body
    JSON.parse(res.body)
  end
  
  

end
