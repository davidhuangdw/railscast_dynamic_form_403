class ProductFieldsController < ApplicationController
  before_action :set_product_field, only: [:show, :edit, :update, :destroy]

  # GET /product_fields
  # GET /product_fields.json
  def index
    @product_fields = ProductField.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_fields }
    end
  end

  # GET /product_fields/1
  # GET /product_fields/1.json
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_field }
    end
  end

  # GET /product_fields/new
  def new
    @product_field = ProductField.new
  end

  # GET /product_fields/1/edit
  def edit
  end

  # POST /product_fields
  # POST /product_fields.json
  def create
    @product_field = ProductField.new(product_field_params)

    respond_to do |format|
      if @product_field.save
        format.html { redirect_to @product_field, notice: 'Product field was successfully created.' }
        format.json { render json: @product_field, status: :created }
      else
        format.html { render action: 'new' }
        format.json { render json: @product_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_fields/1
  # PATCH/PUT /product_fields/1.json
  def update
    respond_to do |format|
      if @product_field.update(product_field_params)
        format.html { redirect_to @product_field, notice: 'Product field was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @product_field.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_fields/1
  # DELETE /product_fields/1.json
  def destroy
    @product_field.destroy
    respond_to do |format|
      format.html { redirect_to product_fields_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_field
      @product_field = ProductField.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_field_params
      params.require(:product_field).permit(:name, :field_type, :required, :product_type_id)
    end
end
