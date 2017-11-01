class CoffeeBeansController < ApplicationController
  def index
    @coffee_beans = CoffeeBean.all

    render("coffee_beans_templates/index.html.erb")
  end

  def show
    @coffee_bean = CoffeeBean.find(params["id"])

    render("coffee_beans_templates/show.html.erb")
  end

  def new_form
    render("coffee_beans_templates/new_form.html.erb")
  end

  def create_row
    @coffee_bean = CoffeeBean.new

    @coffee_bean.blend_name = params[:blend_name]
    @coffee_bean.origin = params[:origin]
    @coffee_bean.variety = params[:variety]
    @coffee_bean.notes = params[:notes]

    @coffee_bean.save

    redirect_to("/coffee_beans")
  end

  def edit_form
    render("coffee_beans_templates/edit_form.html.erb")
  end

  def update_row
    @coffee_bean = CoffeeBean.find(params[:id])

    @coffee_bean.blend_name = params[:blend_name]
    @coffee_bean.origin = params[:origin]
    @coffee_bean.variety = params[:variety]
    @coffee_bean.notes = params[:notes]

    @coffee_bean.save

    redirect_to("/coffee_beans/#{@coffee_bean.id}")
  end

  def destroy_row
    @coffee_bean = CoffeeBean.find(params[:id])

    @coffee_bean.destroy
  end
end
