class User < ApplicationRecord
  validates_presence_of :username
  validates_uniqueness_of :username
end
