class BundlsController < ApplicationController
  before_action :set_bundl, only: [:show, :edit, :update, :destroy]

  # GET /bundls
  # GET /bundls.json
  def index
    @bundls = Bundl.order(:updated_at)
  end

  # GET /bundls/1
  # GET /bundls/1.json
  def show
    # showing a bundl consists of presenting a collection of all the media items within the bundl
    # retrieve all records in the media_item table with the foreign key equivalent to the current bundle id
    @items = MediaItem.where("bundl_id = ?", params[:id]) # list of media items in this bundl
  end

  # GET /bundls/new
  def new
    @bundl = Bundl.new
  end

  # GET /bundls/1/edit
  def edit
  end

  # POST /bundls
  # POST /bundls.json
  def create
    @bundl = Bundl.new(bundl_params)

    respond_to do |format|
      if @bundl.save
        format.html { redirect_to @bundl, notice: "Bundl was successfully created." }
        format.json { render :show, status: :created, location: @bundl }
      else
        format.html { render :new }
        format.json { render json: @bundl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bundls/1
  # PATCH/PUT /bundls/1.json
  def update
    respond_to do |format|
      if @bundl.update(bundl_params)
        format.html { redirect_to @bundl, notice: "Bundl was successfully updated." }
        format.json { render :show, status: :ok, location: @bundl }
      else
        format.html { render :edit }
        format.json { render json: @bundl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bundls/1
  # DELETE /bundls/1.json
  def destroy
    @bundl.destroy
    respond_to do |format|
      format.html { redirect_to bundls_url, notice: "Bundl was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_bundl
    @bundl = Bundl.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def bundl_params()
    params.require(:bundl).permit(:title, :description, :color)
  end

  def get_item_count(id)
    count = MediaItem.where("bundl_id = ?", id).count
    return count
  end

  def is_multiple_items(id)
    items = "Items"
    if get_item_count(id) == 1
      items = "Item"
    end

    return items
  end

  helper_method :get_item_count
  helper_method :is_multiple_items
end
