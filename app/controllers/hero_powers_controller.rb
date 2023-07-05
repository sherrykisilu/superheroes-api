class HeroPowersController < ApplicationController
    def create
      hero = Hero.find_by(id: params[:hero_id])
      power = Power.find_by(id: params[:power_id])
  
      if hero && power
        hero_class HeroPowersController < ApplicationController
        rescue_from ActiveRecord::RecordInvalid, with: :invalid_heropower_params
      
        def create
          heropower = HeroPower.create!(heropower_params)
          hero = Hero.find(heropower_params[:hero_id])
          render json: hero,serializer: IndividualHeroSerializer, status: :created
        end
      
        private
      
        def heropower_params
          params.permit(:strength, :power_id, :hero_id)
        end
      
        def invalid_heropower_params(invalid)
          render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
        end
      endfpower = HeroPower.new(hero: hero, power: power, strength: params[:strength])
  
        if hero_power.save
          render json: hero.as_json(include: { powers: { only: [:id, :name, :description] } })
        else
          render json: { errors: hero_power.errors.full_messages }, status: :unprocessable_entity
        end
      else
        render json: { error: 'Hero or Power not found' }, status: :not_found
      end
    end
  end