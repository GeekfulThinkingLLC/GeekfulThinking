class ConsultationsController < ApplicationController
	before_action :set_consultation, only: [:destroy]
  access all: [:create, :new], admin: :all

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
        format.html { redirect_to new_consultation_path, notice: 'Consultation was saved, we will be in contact with you within 24 hours.' }
      else
        format.html { redirect_to new_consultation_path, alert: 'There was a problem submitting your consultation.' }
      end
    end
  end

  def destroy
    @consultation.delete
    redirect_to consultations_path, notice: 'Consultation was deleted'
  end

  private

  def consultation_params
    params.require(:consultation).permit(:name, :description, :phone_number, :email, :company_name)
  end

  def set_consultation
    @consultation = Consultation.find(params[:id])
  end
end
