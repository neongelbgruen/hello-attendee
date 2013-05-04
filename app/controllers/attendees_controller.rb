class AttendeesController < ApplicationController
	def hello
		name = params[:name] || 'Mr. Noname'
		
		@attendee = Attendee.create(:name => name)

		@attendee_count = Attendee.count
	end
	def index
		@attendees = Attendee.all
	end

	def show
		id = params[:id]

		@attendee = Attendee.find(id)
	end

	def new
	end


end
