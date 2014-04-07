class User < ActiveRecord::Base
  acts_as_interface

  #Attributes:
  #:name, :email, :bio, :account_id, :status

  def self.default(type = 'new')
    hash = {}
    case type
    when 'new'
      new(hash)
    when 'create'
      create(hash)
    end
  end

end
