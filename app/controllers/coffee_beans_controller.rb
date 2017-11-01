class CoffeeBeansController < ApplicationController
  def index
    @coffee_beans = CoffeeBean.all

    render("coffee_beans_templates/index.html.erb")
  end

  def show
    @coffee_bean = CoffeeBean.find(params[:id])

    render("coffee_beans_templates/show.html.erb")
  end

  def new_form
    render("coffee_beans_templates/new_form.html.erb")
  end

  def create_row
    @coffee_bean = CoffeeBean.new

    @coffee_bean.blend_name = params[:some_blend_name]
    @coffee_bean.origin = params[:some_origin]
    @coffee_bean.variety = params[:some_variety]
    @coffee_bean.notes = params[:some_notes]

    @coffee_bean.save

    redirect_to("/coffee_beans")
  end

  def edit_form
    @coffee_bean = CoffeeBean.find(params[:id])
    
    render("coffee_beans_templates/edit_form.html.erb")
  end

  def update_row
    @coffee_bean = CoffeeBean.find(params[:id])

    @coffee_bean.blend_name = params[:some_blend_name]
    @coffee_bean.origin = params[:some_origin]
    @coffee_bean.variety = params[:some_variety]
    @coffee_bean.notes = params[:some_notes]

    @coffee_bean.save

    redirect_to("/coffee_beans/#{@coffee_bean.id}")
  end

  def destroy_row
    @coffee_bean = CoffeeBean.find(params[:id])

    @coffee_bean.destroy
    
    redirect_to("/coffee_beans")
  end
end
