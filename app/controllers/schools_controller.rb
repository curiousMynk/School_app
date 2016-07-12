class SchoolsController < ApplicationController
	def create
 	@board = Board.find(params[:board_id])
	@school = @board.school.create(params[:school].permit(:name, :address_line_1, :address_line_2, :city, :state, :pincode, :landline_no_1, :landline_no_2, :fax, :website, :email_id, :b_id, :shifts, :contact_person, :mobile_no,:hindi_name, :logo))
    redirect_to board_path(@board)
  
 end  

def destroy
    @board = Board.find(params[:board_id])
    @school = @board.school.find(params[:id])
    @school.destroy
    redirect_to board_path(@board)
  end


  
  private
    def school_params

      params.params[:school].permit(:name, :address_line_1, :address_line_2, :city, :state, :pincode, :landline_no_1, :landline_no_2, :fax, :website, :email_id, :b_id, :shifts, :contact_person, :mobile_no,:hindi_name, :logo)
end
end
