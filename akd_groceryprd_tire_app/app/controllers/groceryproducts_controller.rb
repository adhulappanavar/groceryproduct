class GroceryproductsController < ApplicationController
  before_action :set_groceryproduct, only: [:show, :edit, :update, :destroy]

  # GET /groceryproducts
  # GET /groceryproducts.json
  def index
    @groceryproducts = Groceryproduct.all
  end

    # GET /groceryproducts/search
  def search
    @groceryproducts = Groceryproduct.tire.search params[:q]

    render :action => "index"
  end

  # GET /groceryproducts/1

  # GET /groceryproducts/1.json
  def show
  end

  # GET /groceryproducts/new
  def new
    @groceryproduct = Groceryproduct.new
  end

  # GET /groceryproducts/1/edit
  def edit
  end

  # POST /groceryproducts
  # POST /groceryproducts.json
  def create
    @groceryproduct = Groceryproduct.new(groceryproduct_params)

    respond_to do |format|
      if @groceryproduct.save
        format.html { redirect_to @groceryproduct, notice: 'Groceryproduct was successfully created.' }
        format.json { render action: 'show', status: :created, location: @groceryproduct }
      else
        format.html { render action: 'new' }
        format.json { render json: @groceryproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groceryproducts/1
  # PATCH/PUT /groceryproducts/1.json
  def update
    respond_to do |format|
      if @groceryproduct.update(groceryproduct_params)
        format.html { redirect_to @groceryproduct, notice: 'Groceryproduct was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @groceryproduct.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groceryproducts/1
  # DELETE /groceryproducts/1.json
  def destroy
    @groceryproduct.destroy
    respond_to do |format|
      format.html { redirect_to groceryproducts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_groceryproduct
      @groceryproduct = Groceryproduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def groceryproduct_params
      params.require(:groceryproduct).permit(:title, :content, :published_on)
    end
end
