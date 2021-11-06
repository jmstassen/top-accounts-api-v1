    class Api::V1::AccountsController < ApplicationController
      require_relative '../../../serializers/account_serializer'

      def create
        account = Account.create(account_params)
        render json: account
      end

      def update
      end

      def index
        accounts = Account.all
        render json: accounts
      end

      def show
      end

      def destroy
      end

      private

      def account_params
        params.require(:account).permit(:account_name, :id)
      end
    end