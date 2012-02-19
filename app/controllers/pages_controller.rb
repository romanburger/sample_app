class PagesController < ApplicationController

  def home
    @title = "Home"
    if signed_in?
      @micropost = Micropost.new
      @feed_items = current_user.feed.paginate(:page => params[:page])
    end
  end

  def contact
    @title = "Contact"
  end

  def about
    @title = "About"
  end

  def help
    @title = "Help"
    @lo_solution = "<pre class='programlisting'>Pre istotu    sem     dam aj
  pre tag
    just to make sure.
  .
.</pre>"
    @lo_new = 
"ahoj
{
  ako
  {
    sa mas
  }
}"
  end

end
