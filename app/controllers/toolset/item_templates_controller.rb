class Toolset::ItemTemplatesController < ApplicationController

  layout 'toolset'

  def index
    @item_templates = ItemTemplate.all
  end

  def new
    @item_template = ItemTemplate.new
  end

  def edit
    @item_template = ItemTemplate.find(params[:id])
  end

  def create
    @item_template = ItemTemplate.new(params[:item_template])

    if @item_template.save
      redirect_to toolset_item_templates_path, notice: 'Item template was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @item_template = ItemTemplate.find(params[:id])

    if @item_template.update_attributes(params[:item_template])
      redirect_to toolset_item_templates_path, notice: 'Item template was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @item_template = ItemTemplate.find(params[:id])
    @item_template.destroy
    redirect_to toolset_item_templates_path
  end
end
