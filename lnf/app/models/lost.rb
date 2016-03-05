class Lost < ActiveRecord::Base
   def self.match(matches)
      #searches = searches.where("catagory = ? AND location = ?", (params[:lost][:catagory]), (params[:lost][:location]))
      p "****************"
      p matches
      p "****************"
      @founds_match = Found.where("catagory = ? AND location = ?", matches[:catagory], matches[:location])
   end
end
