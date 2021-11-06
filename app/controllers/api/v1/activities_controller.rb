class Api::V1::ActivitiesController < ApplicationController
  
  before_action :set_account
  
#   api/v1/accounts/1/activities

  def index
    activities = @account.activities
    render json: activities
  end
    
  def show
    activity = Activity.find(params[:id])
    render json: activity
  end

  def create
    activity = @account.activities.new(activity_params)
    if activity.save
      render json: activity
    else
      render json: {error: 'Could not create activity'}
    end
  end
    
  def update
  end
  
  def destroy
    activity = Activity.find(params[:id])
    activity.destroy
  end
    
  private

  def set_account
    @account = Account.find(params[:account_id])
  end
    
  def activity_params
    params.require(:activity).permit(:activity_type, :activity_date, :activity_name, :account_id, :id)
  end
end