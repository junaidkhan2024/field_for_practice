class WelcomeController < ApplicationController
  def index
    @reciept = Reciept.new
    @reciept.lineitems.build
  end

  def create
    @reciept = Reciept.new(reciept_params)
    if @reciept.save
      redirect_to root_path, notice: "Reciept created succesfully."
    else
      render :index, alert: "failed to create reciept."
    end
  end

  private
  def reciept_params
    params.require(:reciept).permit(:amount, :date, :name, lineitems_attributes: [ :address, :duedate, :quantity ])
  end
end
