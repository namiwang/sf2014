class AgendasController < ApplicationController
  def show
    @agenda = Agenda.find(params[:id])
  end
end
