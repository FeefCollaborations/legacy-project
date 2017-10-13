class Admin::GroupDetailsController < Admin::GroupSubResourceBaseController
  before_action :set_group_detail, only: [:show, :edit, :update, :destroy]

  # GET /group_details
  # GET /group_details.json
  def index
    @group_details = [@group.detail].compact
  end

  # GET /group_details/1
  # GET /group_details/1.json
  def show
  end

  # GET /group_details/new
  def new
    @group_detail = @group.build_detail
  end

  # GET /group_details/1/edit
  def edit
  end

  # POST /group_details
  # POST /group_details.json
  def create
    @group_detail = @group.build_detail(group_detail_params)

    respond_to do |format|
      if @group_detail.save
        format.html { redirect_to group_group_detail_path(@group, @group_detail), notice: 'Group detail was successfully created.' }
        format.json { render :show, status: :created, location: @group_detail }
      else
        format.html { render :new }
        format.json { render json: @group_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /group_details/1
  # PATCH/PUT /group_details/1.json
  def update
    respond_to do |format|
      if @group_detail.update(group_detail_params)
        format.html { redirect_to group_group_detail_path(@group, @group_detail), notice: 'Group detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @group_detail }
      else
        format.html { render :edit }
        format.json { render json: @group_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /group_details/1
  # DELETE /group_details/1.json
  def destroy
    @group_detail.destroy
    respond_to do |format|
      format.html { redirect_to group_group_details_url(@group), notice: 'Group detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_group_detail
    @group_detail = @group.detail
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def group_detail_params
    params.require(:group_detail).permit(:about_us, :initiatives)
  end
end
