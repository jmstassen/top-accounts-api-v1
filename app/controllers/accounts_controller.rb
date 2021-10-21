class AccountsController < ApplicationController

  require_relative '../serializers/account_serializer'

  def create
  end

  def update
  end

  def index
    accounts = Account.all
    render json: accounts
  end

  def show
  end

  def delete
  end
end
