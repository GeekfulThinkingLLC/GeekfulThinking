class ConsultationsController < ApplicationController
	def index
		@consultations = Consultation.all
	end

	def new
    @consultation = Consultation.new
  end

  def create
    @consultation = Consultation.new(consultation_params)

    respond_to do |format|
      if @consultation.save
        format.html { redirect_to consultations_path, notice: 'Consultation saved.' }
      else
        format.html { redirect_to root_path }
      end
    end
  end

  private

  def consultation_params
    params.require(:consultation).permit(:name, :description, :phone_number, :email)
  end
end
