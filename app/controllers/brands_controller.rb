  class BrandsController < ApplicationController
    def index
      @brands = Brand.all

      respond_to do |format|
        format.html  # index.html.erb
        format.json  { render :json => @brands }
      end
    end
  
    def new
      @brand = Brand.new
      
       respond_to do |format|
         format.html  # new.html.erb
         format.json  { render :json => @brand }
       end 
    end

    def create
      @brand = Brand.new(params[:brand])
     
        respond_to do |format|
          if @brand.save
            format.html  { redirect_to(@brand,
                          :notice => 'Brand was successfully created.') }
            format.json  { render :json => @brand,
                          :status => :created, :location => @brand }
          else
            format.html  { render :action => "new" }
            format.json  { render :json => @brand.errors,
                          :status => :unprocessable_entity }
          end
        end
    end
  
    def show
      @brand = Brand.find(params[:id])

        respond_to do |format|
          format.html  # show.html.erb
          format.json  { render :json => @brand }
        end
    end
  
    def edit
      @brand = Brand.find(params[:id])
    end
  
    def update
      @brand = Brand.find(params[:id])

       respond_to do |format|
         if @brand.update_attributes(params[:brand])
           format.html  { redirect_to(@brand,
                         :notice => 'Post was successfully updated.') }
           format.json  { render :json => {}, :status => :ok }
         else
           format.html  { render :action => "edit" }
           format.json  { render :json => @brand.errors,
                         :status => :unprocessable_entity }
         end
       end
    
    end
  
    def destroy
      @brand = Brand.find(params[:id])
        @brand.destroy

        respond_to do |format|
          format.html { redirect_to brands_url }
          format.json { head :ok }
        end
    end
  
  end
