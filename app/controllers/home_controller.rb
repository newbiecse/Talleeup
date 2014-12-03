class HomeController < ApplicationController
  # before_action :authenticate_user!
  def index
    @products = Product.all
    render layout: "home_layout"
  end

  def userprofile
    user_id = params[:id]
    my_user_id = 1 # get from section

    @user = User.find_by_id(user_id)

    if @user.nil?
      @user = User.find_by_id(1)
    end

    @profile = Profile.find(@user.id)
    @myprofile = Profile.find(my_user_id)

    @products = Product.all
    render layout: "userprofile_layout"
  end

  def myprofile
    my_user_id = 1 # get from section
    user = User.find(my_user_id)
    @myprofile = Profile.find(my_user_id)
    @products = Product.all

    render layout: "myprofile_layout"
  end

  def review
    my_user_id = 1 # get from section
    user = User.find(my_user_id)
    @myprofile = Profile.find(my_user_id)

    render layout: "review_layout"
  end

  #hungnt
  #login
  def login
      @product = Product.all
      render layout: "homelogin/homelogin"
  end

  def geolocation
    # render layout: "homelogin"
    render :action => "index", layout: "geolocation"
  end

  #hungnt
  #BurgerProfile
  def BurgerProfile
      render layout:"BurgerProfile/BurgerProfile"
  end
  #hungnt
  #locations
  def locations
    render layout:"locations/locations"
  end

  def test
    # render layout: "homelogin"
    render layout: "application"
  end

end
