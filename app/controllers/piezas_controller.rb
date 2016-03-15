class PiezasController < ApplicationController
def create
    @auto = Auto.find(params[:auto_id])
    @pieza = @auto.piezas.create(pieza_params)
    redirect_to auto_path(@auto)
  end
  
def destroy
    @auto = Auto.find(params[:auto_id])
    @pieza = @auto.piezas.find(params[:id])
    @pieza.destroy
    redirect_to auto_path(@auto)
  end  
  
  
 
  private
    def pieza_params
      params.require(:pieza).permit(:nombre, :cantidad)
    end
end
