class Employees::ListsController < Employees::ApplicationController

  def new
    new_list
  end

  def create
    new_list(list_params)
    if new_list.save
      redirect_to [:employees, @list]
    else
      render :new
    end
  end

  def edit
    list
  end

  def update
    if list.update_attributes(list_params)
      redirect_to [:employees, list]
    else
      puts list.errors.full_messages
      render :show
    end
  end

  def show
    list
  end


private

  def list_params
    @list_params ||= params.require(:list).permit(:name,
      tasks_attributes: [:id, :name, :completed, :_destroy])
  end

  def list
    @list ||= current_employee.lists.find(params[:id])
  end

  def new_list(attrs={})
    @list ||= current_employee.lists.build(attrs)
  end

end
