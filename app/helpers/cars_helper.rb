module CarsHelper

	def add_edit_car
	   @brands = Brand.order(name: :asc)
       @year = []
       for i in 2000..Time.current.year
       	@year.push(i)
       end
	end

end
