class ConsultationsController < ApplicationController
	def index
		@consultation = Consultation.all
	end

  def create
    @consultation = Consultation.new(consultation_params)

    respond_to do |format|
      if @consultation.save
        format.html { redirect_to consultations_path, notice: 'Consultation saved.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def consultation_params
    params.require(:consultation).permit(:name, :description, :phone_number, :email, :company_name)
  end
end
