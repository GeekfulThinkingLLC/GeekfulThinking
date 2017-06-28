class ChangePhoneNumberFormatForConsultations < ActiveRecord::Migration[5.0]
  def change
  	change_column :consultations, :phone_number, :string
  end
end
