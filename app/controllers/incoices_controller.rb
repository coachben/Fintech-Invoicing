class IncoicesController < ApplicationController
  before_action :set_incoice, only: [:show, :edit, :update, :destroy]

  # GET /incoices
  # GET /incoices.json
  def index
    @incoices = Incoice.all
  end

  # GET /incoices/1
  # GET /incoices/1.json
  def show
  end

  # GET /incoices/new
  def new
    @incoice = Incoice.new
  end

  # GET /incoices/1/edit
  def edit
  end

  # POST /incoices
  # POST /incoices.json
  def create
    @incoice = Incoice.new(incoice_params)

    respond_to do |format|
      if @incoice.save
        format.html { redirect_to @incoice, notice: 'Incoice was successfully created.' }
        format.json { render :show, status: :created, location: @incoice }
      else
        format.html { render :new }
        format.json { render json: @incoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incoices/1
  # PATCH/PUT /incoices/1.json
  def update
    respond_to do |format|
      if @incoice.update(incoice_params)
        format.html { redirect_to @incoice, notice: 'Incoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @incoice }
      else
        format.html { render :edit }
        format.json { render json: @incoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incoices/1
  # DELETE /incoices/1.json
  def destroy
    @incoice.destroy
    respond_to do |format|
      format.html { redirect_to incoices_url, notice: 'Incoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_incoice
      @incoice = Incoice.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def incoice_params
      params.require(:incoice).permit(:amount, :company, :contragent, :currency, :date)
    end
end
