class ExamplePolicy < ApplicationPolicy
  def access?
    user == 'admin'
  end
end
