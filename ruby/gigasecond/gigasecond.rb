# assignment 3: gigasecond
# author: Jason Morse
# date: May 31, 2015
# 

class Gigasecond

	VERSION = 1

	def self.from(birthday)

		# returns a floating point number of seconds since the Epoch
		t = birthday
		"%10.5f" % t.to_f

		gs_anniversary = t + (10 ** 9)
		date = Time.at(gs_anniversary)

		return date

	end

end