class Imc < ApplicationRecord

  def self.imc_result(height, weight)

    imc = weight.to_f / (height.to_f)**2
    inf = Float::INFINITY
    case imc
    when (0..18.5)
      json = { imc: imc, classification:'abaixo do peso', obesity: '-' }
    when (18.5..25.0)
      json = { imc: imc, classification:'peso ideal', obesity: '-' }
    when (25..30.0)
      json = { imc: imc, classification:'sobrepeso', obesity: '-' }
    when(30..35)
      json = { imc: imc, classification:'obsidade', obesity: 'I' }
    when(35..40)
      json = { imc: imc, classification:'obesidade', obesity: 'II' }
    when (40..inf)
      json = { imc: imc, classification:'obesidade', obesity: 'III' }
    end
    return json
  end

end
