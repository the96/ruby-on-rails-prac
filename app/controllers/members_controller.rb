class MembersController < ApplicationController
  def zerlock
  end
  def muhiyh
  end
  def list
  end
  def form
    @member = Member.new
    @member.creative_fields.build
  end
  def member_object
      params.require(:member).permit(:member_name, :twitter_id, :icon_img, :header_img, :plofile, :align, creative_fields_attributes: [:field])
  end
  def create
    @member = Member.new(member_object)
    if @member.save
      redirect_to :action => "show", :name => @member.member_name
    end
  end
  def show
    @member = Member.find_by(member_name: params[:name])
    @creative_fields = @member.creative_fields
  end
end
