class KeysController < ApplicationController
	def edit

	end
	def show
		@key = Key.find(params[:id])
		########################################################################
		# Initialise Keycode to a blank Keycode Object to avoid calling
		# nil methods in the view, avoiding a page crash \if the keycode
		# is not set. I find it is good practice to never let an end_user
		# see \a crash pages just because some data is missing from the db, as
		# most \end users will assume that the site is broken \when they see
		# \crash pages, and won't understand the error message telling them
		# it's caused by missing data.
		########################################################################
	  @keycode = Keycode.create
		if @key.keycode1
				@keycode = Keycode.find(@key.keycode1)
		end
	end
end
