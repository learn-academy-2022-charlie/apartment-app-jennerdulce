class ApartmentsController < ApplicationController
    def index
        apartments = Apartment.all
        render json: apartments
    end

    def show
        apartment = Apartment.find(params[:id])
        render json: apartment
    end

    def create
        apartment = Apartment.create(apartment_params)
        if apartment.valid?
            render json: apartment
        else
            render json: apartment.errors, status: 422
        end
    end

    def update
        apartment = Apartment.find(params[:id])
        if apartment.valid?
            apartment.update(apartment_params)
            render json: apartment
        else
            render json: apartment.errors, status: 422
        end
    end

    def destroy
        apartment = Apartment.find(params[:id])
        apartment.destroy
        render json: {destroy: true}
    end

    private
    # Strong parameter
    def apartment_params
        params.require(:apartment).permit(:street, :city, :state, :manager, :email, :price, :bedrooms, :bathrooms, :pets, :image)
    end
end
