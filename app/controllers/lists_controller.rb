class ListsController < ApplicationController
  def index
    @lists = List.all

    render("lists_templates/index.html.erb")
  end

  def show
    @list = List.find(params[:id])

    render("lists_templates/show.html.erb")
  end

  def new_form
    render("lists_templates/new_form.html.erb")
  end

  def create_row
    @list = List.new

    @list.title = params[:title]
    @list.description = params[:description]

    @list.save

    redirect_to("/lists")
  end

  def edit_form
    @list = List.find(params[:id])

    render("lists_templates/edit_form.html.erb")
  end

  def update_row
    @list = List.find(params[:id])

    @list.title = params[:title]
    @list.description = params[:description]

    @list.save

    redirect_to("/lists/#{@list.id}")
  end

  def destroy_row
    @list = List.find(params[:id])
    
    @list.destroy

    redirect_to("/lists")
  end
end
