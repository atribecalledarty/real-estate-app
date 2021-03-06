class CitiesController < ApplicationController
    def show
        city = City.find(params[:id])
        render json: CitySerializer.new(city).to_serialized_json
    end

    def index
        cities = City.all
        render json: CitySerializer.new(cities).to_serialized_json
    end

    def create
        city = City.create(
            name: params[:name],
            median_homeprice: params[:median_homeprice],
            home_value_growth: params[:home_value_growth],
            population: params[:population],
            median_age: params[:median_age],
            median_household_income: params[:median_household_income],
            income_growth: params[:income_growth],
            job_growth_percentage: params[:job_growth_percentage]
        )
        render json: CitySerializer.new(city).to_serialized_json
    end
end
