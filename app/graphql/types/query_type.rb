# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :user, Types::UserType, null: false, description: 'user by id' do
      argument :id, ID
    end

    field :car, Types::CarType, null: false, description: 'car by id' do
      argument :id, ID
    end

    def user(id:)
      User.find(id)
    end

    def car(id:)
      Car.find(id)
    end
  end
end
