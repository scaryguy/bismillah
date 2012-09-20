class ProgramsController < ApplicationController
  def index
    @program = Program.all(order: "created_at DESC")
  end

  def show
    @program = Program.find(params[:id])
  end
  
  def create
    @program = Program.new(params[:program])
    
    if @program.save
      redirect_to action: 'index'
    else
      render 'new'
    end
  end
  
  def new 
    @program = Program.new
  end
  

  def edit
        @program = Program.find params[:id]
  end
  
  def update
    @program = Program.find params[:id]

      respond_to do |format|
        if @program.update_attributes(params[:program])
          format.html { redirect_to(@program, :notice => 'Program basariyla guncellendi') }
          format.json { respond_with_bip(@program) }
        else
          format.html { render :action => "edit" }
          format.json { respond_with_bip(@program) }
        end
      end
  end
  

  def destroy
    @program = Program.find(params[:id])
    
    @program.destroy
    
    redirect_to action: 'index'
  end
end
