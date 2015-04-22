class PlacesController < ApplicationController

	def index
		@places =Place.all
	end

	def show
		@place=Place.find_by(id:params["id"])
		@reviews=Review.where(place_id:params["id"])
	end

	def delete
		@place_to_delete=Place.find_by(id:params["id"])
		@place_to_delete.delete
		redirect_to "/"
	end

	def new
	end

	def create
		@place_to_create=Place.new
		@place_to_create.title=params[:title]
		@place_to_create.photo_url=params[:photo_url]
		@place_to_create.admission_price=params[:admission_price].to_f*1000
		@place_to_create.description=params[:description]
		@place_to_create.save
		redirect_to "/"
	end

	def edit
		@place_to_edit=Place.find_by(id:params["id"])
	end

	def update
		@place_to_update=Place.find_by(id:params["id"])
		@place_to_update.title=params[:title]
		@place_to_update.photo_url=params[:photo_url]
		@place_to_update.admission_price=params[:admission_price].to_f*1000
		print "look at here"+@place_to_update.admission_price.to_s
		print "look at here2"+params[:admission_price]
		@place_to_update.description=params[:description]
		@place_to_update.save
		redirect_to "/places/#{params["id"]}"
	end

	def addreview
		@review_to_add=Review.new
		@review_to_add.place_id=params[:id]
		@review_to_add.title=nil;
		@review_to_add.rating=params[:rating]
		@review_to_add.description=params[:description]
		@review_to_add.save
		@place=Place.find_by(id:params["id"])
		@reviews=Review.find_by(place_id:params["id"])
		redirect_to "/places/#{params["id"]}"
	end

end