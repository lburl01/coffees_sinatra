require 'active_record'

class Country < ActiveRecord::Base
  has_many :coffees
end
