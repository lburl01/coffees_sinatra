require 'active_record'

class Coffee < ActiveRecord::Base
  belongs_to :country, foreign_key: :country_id
end
