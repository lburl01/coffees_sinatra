require_relative 'environment'
require_relative 'coffee'
require_relative 'country'

def main
  guatemala = Country.create(
  country_name: 'Guatemala',
  tons: 224871
  )

  mexico = Country.create(
  country_name: 'Mexico',
  tons: 257940
  )

  uganda = Country.create(
  country_name: 'Uganda',
  tons: 314489
  )

  light_roast = Coffee.create(
    blend_name: 'Bryce Blend',
    country_id: 1
  )

  med_roast = Coffee.create(
    blend_name: 'Lori Blend',
    country_id: 1
  )

  dark_roast = Coffee.create(
    blend_name: 'Fitch Blend',
    country_id: 3
  )
end

main if __FILE__ == $PROGRAM_NAME
