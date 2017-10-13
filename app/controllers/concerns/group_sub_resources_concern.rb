module GroupSubResourcesConcern

  extend ActiveSupport::Concern

  included do
    before_action :set_group

    private

    def set_group
      @group = Group.find(params[:group_id])
    end
  end

end