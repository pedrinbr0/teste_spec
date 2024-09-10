class EnemiesController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :set_enemy, only: [:update, :destroy]

  def update
    if @enemy.update(enemy_params)
      render json: @enemy, status: :ok
    else
      render json: { errors: @enemy.errors }, status: :unprocessable_entity
    end
  end

  def destroy
    @enemy.destroy
    head :no_content
  end

  private

  def set_enemy
    @enemy = Enemy.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :not_found
  end

  def enemy_params
    params.require(:enemy).permit(:name, :power_base, :power_step, :level, :kind)
  end
end
