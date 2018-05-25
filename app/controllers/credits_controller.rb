class CreditsController < ApplicationController
  before_action :set_credit, only: [:show, :edit, :update, :destroy]
  before_action :signed_in_user
  before_action :correct_user, only: :destroy
  # GET /credits
  # GET /credits.json
  def index
    redirect_to(current_user)
    @credits = Credit.all
  end

  # GET /credits/1
  # GET /credits/1.json
  def show
    redirect_to(current_user)
  end

  # GET /credits/new
  def new
    @credit = Credit.new
    @user = current_user
  end

  # GET /credits/1/edit
  def edit
    @user = current_user
  end

  # POST /credits
  # POST /credits.json
  def create
    @credit = current_user.credits.build(credit_params)

    respond_to do |format|
      if @credit.save
        format.html { redirect_to @credit, notice: 'Credit was successfully created' }
        format.json { render :show, status: :created, location: @credit }
      else
        format.html { render :new }
        format.json { render json: @credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credits/1
  # PATCH/PUT /credits/1.json
  def update
    respond_to do |format|
      if @credit.update(credit_params)
        format.html { redirect_to @credit, notice: 'Credit was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit }
      else
        format.html { render :edit }
        format.json { render json: @credit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credits/1
  # DELETE /credits/1.json
  def destroy
    @credit.destroy
    respond_to do |format|
      format.html { redirect_to credits_url, notice: 'Credit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit
      @credit = Credit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_params
      params.require(:credit).permit(:credito, :saldoInicial, :tasaInteres, :plazo, :fechaInicio)
    end

    def correct_user
      @credit= current_user.credits.find_by(id: params[:id])
      redirect_to root_url if @credit.nil?
    end
end
