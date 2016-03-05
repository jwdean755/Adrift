class LostsController < ApplicationController
   def index
      @losts = Lost.all
   end

   def show
      @lost = Lost.find(params[:id])
   end

   def new
   end

   def create
      @lost = Lost.new(params.require(:lost).permit(:catagory, :location, :description, :email))

      #expirimental
      #@founds = self.get_matching(params);

      if params[:lost][:email].include? "@usna.edu"
         @lost.save
         redirect_to @lost
      else
         redirect_to action: "new"
      end

   end

end
