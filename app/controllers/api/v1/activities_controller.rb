class Api::V1::ActivitiesController < ApplicationController
  
  before_action :set_account
  
  def index
    activities = Activity.all
    render json: activities
  end
    
  def show
    activity = Activity.find(params[:id])
    render json: activity
  end

  def create
    activity = @account.activities.new(activity_params)
    if activity.save
      render json: @account
    else
      render json: {error: 'Could not create activity'}
    end
  end
    
  def update
    activity = Activity.find(params[:id])
    activity.activity_date = params[:activity_date]
    activity.activity_type = params[:activity_type]
    activity.activity_name = params[:activity_name]
    activity.save
    render json: @account
  end
  
  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
    render json: @account
  end
    
  private

  def set_account
    @account = Account.find(params[:account_id])
  end
    
  def activity_params
    params.require(:activity).permit(:activity_type, :activity_date, :activity_name, :account_id, :id)
  end
end