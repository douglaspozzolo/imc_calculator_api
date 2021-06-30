class ImcController < ApplicationController

  require 'imc/imc'

  def calc_imc
    render :json => Imc.imc_result(params[:height], params[:weight])
  end

end
