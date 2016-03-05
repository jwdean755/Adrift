class FoundsController < ApplicationController
   def index
      @founds = Found.all
   end

   def show
      @found = Found.find(params[:id])
   end

   def new
   end

   def create
      @found = Found.new(params.require(:found).permit(:catagory, :location, :email))

      if params[:found][:email].include? "@usna.edu"
         @found.save
         redirect_to @found
      else
         redirect_to action: "new"
      end
   end
end
