require_relative 'environment'

class CreateCountriesTable < ActiveRecord::Migration[5.0]

  def up
    create_table :countries do |t|
      t.string :country_name
      t.integer :tons,  null: false
    end
  end

  def down
    drop_table :countries
  end

end

class CreateCoffeesTable < ActiveRecord::Migration[5.0]

  def up
    create_table :coffees do |t|
      t.belongs_to :country, index: true
      t.string :blend_name
      t.integer :country_id
    end
  end

  def down
    drop_table :coffees
  end

end

def main
  action = (ARGV[0] || :up).to_sym

  CreateCountriesTable.migrate(action)

  action = (ARGV[1] || :up).to_sym

  CreateCoffeesTable.migrate(action)
end

main if __FILE__ == $PROGRAM_NAME
