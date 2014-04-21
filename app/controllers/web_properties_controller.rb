class WebPropertiesController < ApplicationController
  before_action :set_web_property, only: [:show, :edit, :update, :destroy]

  # GET /web_properties
  # GET /web_properties.json
  def index
    @web_properties = WebProperty.all
  end

  # GET /web_properties/1
  # GET /web_properties/1.json
  def show
  end

  # GET /web_properties/new
  def new
    @web_property = WebProperty.new
    authorize @web_property
  end

  # GET /web_properties/1/edit
  def edit
  end

  # POST /web_properties
  # POST /web_properties.json
  def create
    @web_property = current_user.WebProperty.new(web_property_params)

    respond_to do |format|
      if @web_property.save
        format.html { redirect_to @web_property, notice: 'Web property was successfully created.' }
        format.json { render action: 'show', status: :created, location: @web_property }
      else
        format.html { render action: 'new' }
        format.json { render json: @web_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_properties/1
  # PATCH/PUT /web_properties/1.json
  def update
    respond_to do |format|
      if @web_property.update(web_property_params)
        format.html { redirect_to @web_property, notice: 'Web property was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @web_property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_properties/1
  # DELETE /web_properties/1.json
  def destroy
    @web_property.destroy
    respond_to do |format|
      format.html { redirect_to web_properties_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_property
      @web_property = WebProperty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def web_property_params
      params.require(:web_property).permit(:name, :url)
    end
end
