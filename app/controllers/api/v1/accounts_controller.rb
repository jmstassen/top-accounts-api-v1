class Api::V1::AccountsController < ApplicationController
  require_relative '../../../serializers/account_serializer'

  def index
    accounts = Account.all
    render json: accounts
  end

  def create
    account = Account.new(account_params)
    if account.save
      render json: account
    else
      render json: {error: 'Could not create account'}
    end
  end

  def show
    account = Account.find(params[:id])
    render json: account
  end

  def update
  end

  def destroy
    account = Account.find(params[:id])
    account.destroy
    render json: account.id
  end

  private

  def account_params
    params.require(:account).permit(:account_name, :id)
  end
end