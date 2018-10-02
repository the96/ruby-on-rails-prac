class MembersController < ApplicationController
  def zerlock
  end
  def muhiyh
  end
  def list
    @members = Member.all
  end
  def form
    @member = Member.new
    @member.creative_fields.build
  end
  def member_object
      params.require(:member).permit(:member_name,  :icon_img, :header_img, :profile, :title, :description, :align, creative_fields_attributes: [:field])
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
    @lines = @member.profile.split(/\n/)
    @vertical = @member.align == "topleft" || @member.align == "topright" ? "top" : "bottom"
    @horizontal = @member.align == "topleft" || @member.align == "bottomleft" ? "left" : "right"
    
  end
end
