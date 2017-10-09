class Admin::FaqsController < Admin::ApplicationController
  before_action :set_group
  before_action :set_faq, only: [:show, :edit, :update, :destroy]

  # GET /faqs
  # GET /faqs.json
  def index
    @faqs = @group.faqs
  end

  # GET /faqs/1
  # GET /faqs/1.json
  def show
  end

  # GET /faqs/new
  def new
    @faq = Faq.new
  end

  # GET /faqs/1/edit
  def edit
  end

  # POST /faqs
  # POST /faqs.json
  def create
    @faq = @group.faqs.new(faq_params)

    respond_to do |format|
      if @faq.save
        format.html { redirect_to group_faqs_url(@group), notice: 'Faq was successfully created.' }
        format.json { render :show, status: :created, location: @faq }
      else
        format.html { render :new }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faqs/1
  # PATCH/PUT /faqs/1.json
  def update
    respond_to do |format|
      if @faq.update(faq_params)
        format.html { redirect_to group_faqs_url(@group), notice: 'Faq was successfully updated.' }
        format.json { render :show, status: :ok, location: @faq }
      else
        format.html { render :edit }
        format.json { render json: @faq.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faqs/1
  # DELETE /faqs/1.json
  def destroy
    @faq.destroy
    respond_to do |format|
      format.html { redirect_to group_faqs_url(@group), notice: 'Faq was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_faq
    @faq ||= @group.faqs.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def faq_params
    params.require(:faq).permit(:question, :answer)
  end

  def set_group
    @group ||= Group.find(params[:group_id])
  end
end
