class Toolset::FacilityTemplatesController < ApplicationController

  layout 'toolset'

  def index
    @facility_templates = FacilityTemplate.all
  end

  def show
    @facility_template = FacilityTemplate.find(params[:id])
  end

  def new
    @facility_template = FacilityTemplate.new
  end

  def edit
    @facility_template = FacilityTemplate.find(params[:id])
  end

  def create
    @facility_template = FacilityTemplate.new(params[:facility_template])

    if @facility_template.save
      redirect_to toolset_facility_templates_path, notice: 'Предмет окружения создан'
    else
      render action: "new"
    end
  end

  def update
    @facility_template = FacilityTemplate.find(params[:id])

    if @facility_template.update_attributes(params[:facility_template])
      redirect_to toolset_facility_templates_path, notice: 'Предмет окружения обновлен'
    else
      render action: "edit"
    end

  end

  def destroy
    @facility_template = FacilityTemplate.find(params[:id])
    @facility_template.destroy
    redirect_to toolset_facility_templates_path
  end
end
