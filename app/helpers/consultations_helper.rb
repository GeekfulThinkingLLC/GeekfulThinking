module ConsultationsHelper
	def phone_validator number
		regex = %r{^(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]?\d{3}[\s.-]?\d{4}$}
		number.gsub(regex)
	end
end
