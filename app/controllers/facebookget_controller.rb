
class FacebookgetController < ApplicationController
  
  def testget
    @term = Term.find(params[:id])
    @result = @term.fetch_data_fb 
  end



end
