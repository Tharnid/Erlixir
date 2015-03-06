defmodule LengthConverter.Feet do 
	def convert(m) do 
		m * 3.28084
	end
end

defmodule LengthConverter.Inch do 
	def convert(m) do 
		m * 39.3701
	end
end

defmodule LengthConvert.KG do 
	def convert(k) do 
		k * 2.20462
	end
end

defmodule LengthConverter.LB do 
	def convert(lb) do 
		lb * 0.453592
	end
end
