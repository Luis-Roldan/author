class CreatorsController < ApplicationController
  def index
    @creators = Creator.all
  end

  def show
    @creator = Creator.find(params[:id])
  end

  def new
    @creator = Creator.new
  end

  def create
    @creator = Creator.new(creator_params)
    if @creator.save
      redirect_to @creator, notice: 'Creator was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @creator = Creator.find(params[:id])
  end

  def update
    @creator = Creator.find(params[:id])
    if @creator.update(creator_params)
      redirect_to @creator, notice: 'Creator was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @creator = Creator.find(params[:id])
    @creator.destroy
    redirect_to creators_url, notice: 'Creator was successfully destroyed.'
  end

  private

  def creator_params
    params.require(:creator).permit(:name, :age)
  end
end
