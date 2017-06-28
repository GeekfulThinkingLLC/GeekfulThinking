class CreateConsultations < ActiveRecord::Migration[5.0]
  def change
    create_table :consultations do |t|
    	
    	t.string 	:company_name
    	t.string 	:name
    	t.string :phone_number
    	t.string 	:email
    	t.text    :description

      t.timestamps
    end
  end
end
