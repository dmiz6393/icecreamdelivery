class AddressesController < ApplicationController

    def new 
        @address=Address.new
    end 

    def create
        @address=Address.create params[:id]
    end 
end
