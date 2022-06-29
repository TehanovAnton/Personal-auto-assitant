module Mutations
  module Users
    class UserCreate < BaseMutation
      description "Creates a new user"
  
      field :user, Types::UserType, null: false
  
      argument :user_input, Types::Inputs::UserInputType, required: true
  
      def resolve(user_input:)
        binding.pry
        user = User.new(**user_input)
        raise GraphQL::ExecutionError.new "Error creating user", extensions: user.errors.to_hash unless user.save
  
        { user: user }
      end
    end
  end
end