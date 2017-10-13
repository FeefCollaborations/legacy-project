class Admin::GroupSubResourceBaseController < Admin::ApplicationController
  before_action :set_group
  before_action :set_breadcrumb

  private

  def set_group
    @group = Group.find(params[:group_id])
  end

  def set_breadcrumb
    push_to_breadcrumb({ title: @group.name, link: group_path(@group) })
  end
end