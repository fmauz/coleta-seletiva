class Admin::UsersController < Admin::AdminController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /users
  # GET /users.json
  def index
    @users = User.unscoped.all
    respond_with( @users )
  end

  # GET /users/1
  # GET /users/1.json
  def show
    respond_with( @user )
  end

  # GET /users/new
  def new
    @user = User.new
    @user.build_person
    respond_with( @user )
  end

  # GET /users/1/edit
  def edit
    respond_with( @user )
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    @user.save
    respond_with( [ :admin, @user] )
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user.update(user_params)
    respond_with( [ :admin, @user] )
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_with( [ :admin, @user] )
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.unscoped.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit( :email, :password, :password_confirmation, :role_id, :person_attributes => [ :name ] )
    end
end
