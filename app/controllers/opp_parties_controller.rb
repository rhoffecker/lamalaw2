class OppPartiesController < ApplicationController
  before_action :set_opp_party, only: [:show, :edit, :update, :destroy]

  # GET /opp_parties
  # GET /opp_parties.json
  def index
    @opp_parties = OppParty.where(:user_id => current_user.id)
  end

  # GET /opp_parties/1
  # GET /opp_parties/1.json
  def show
    @opp_party = OppParty.find(params[:id])
  end

  # GET /opp_parties/new
  def new
    @opp_party = OppParty.new
  end

  # GET /opp_parties/1/edit
  def edit
  end

  # POST /opp_parties
  # POST /opp_parties.json
  def create
    @opp_party = OppParty.new(opp_party_params)
    @opp_party.user_id = current_user.id 

    respond_to do |format|
      if @opp_party.save
        format.html { redirect_to @opp_party, notice: 'Opp party was successfully created.' }
        format.json { render :show, status: :created, location: @opp_party }
      else
        format.html { render :new }
        format.json { render json: @opp_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /opp_parties/1
  # PATCH/PUT /opp_parties/1.json
  def update
    respond_to do |format|
      if @opp_party.update(opp_party_params)
        format.html { redirect_to @opp_party, notice: 'Opp party was successfully updated.' }
        format.json { render :show, status: :ok, location: @opp_party }
      else
        format.html { render :edit }
        format.json { render json: @opp_party.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /opp_parties/1
  # DELETE /opp_parties/1.json
  def destroy
    @opp_party.destroy
    respond_to do |format|
      format.html { redirect_to opp_parties_url, notice: 'Opp party was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_opp_party
      @opp_party = OppParty.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def opp_party_params
      params.require(:opp_party).permit(:user_id, :first_name, :last_name, :birth_date, :ssn, :home_phone, :work_phone, :cell_phone, :case_number, :add_line1, :add_line2, :add_city, :add_state, :add_zip, :gender, :height, :weight, :dl_number, :dl_state)
    end
end
