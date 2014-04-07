class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  def index
    limit = 10
    page = params[:page] ? params[:page].to_i : 0

    @users = User.retrieve(page, limit)

    @next_link = url_for(User.params_to_retrieve(page, limit, 'next'))
    @prev_link = url_for(User.params_to_retrieve(page, limit, 'previous'))
    @reload_link = url_for(User.params_to_retrieve(page, limit, 'reload'))
    more_params = User.params_to_retrieve(page, limit, 'next')
    more_params[:show_more] = 't' 
    @more_link = url_for(more_params)

    redir = params[:show_more] == 't' ? 'show_more' : 'index'
    respond_to do |format|
      format.html { render "users/html/index" }
      format.js { render "users/js/#{redir}" }
    end
  end

  def show
    respond_to do |format|
      format.html { render "users/html/show" }
      format.js { render "users/js/show" }
    end
  end

  def new
    @user = User.new
    respond_to do |format|
      format.html { render "users/html/new" }
      format.js { render "users/js/new" }
    end
  end

  def edit
    respond_to do |format|
      format.html { render "users/html/edit" }
      format.js { render "users/js/edit" }
    end
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_to do |format|
      format.html { render "users/html/create" }
      format.js { render "users/js/create" }
    end
  end

  def update
    @user.update(user_params)
    if user_params.size > 1
      redir_template = 'update_full'
    else
      @attribute = user_params.first[0].to_s
      redir_template = 'update_attr'
    end

    respond_to do |format|
      format.html { redirect_to @user }
      format.js { render "users/js/#{redir_template}" }
    end
  end

  def destroy
    @identifier = @user.identifier('id')
    @user.destroy
    respond_to do |format|
      format.html { }
      format.js { render "users/js/destroy" }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      id = params[:id] ? params[:id] : params[:user_id]
      @user = User.find(id)
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email, :bio, :account_id, :status)
    end
end
