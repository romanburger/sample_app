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
    @text = "<div xmlns=\"http://www.w3.org/1999/xhtml\" class=\"simplesect\"><div class=\"titlepage\"><hr/></div> <p> </p><pre class=\"programlisting\">#include &lt;stdio.h&gt; typedef struct { unsigned den : 5; /* bity 0 - 4 */ unsigned mesic : 4; /* bity 5 - 8 */ unsigned rok : 7; /* bity 9 - 15 */ } DATUM; typedef union { DATUM datum; unsigned int cislo; } BITY; int main(void) { BITY dnes; int den, mesic, rok; printf(\"Zadej dnesni datum [dd mm rrrr]: \"); scanf(\"%d %d %d\", &amp;den, &amp;mesic, &amp;rok); dnes.cislo = 0; printf(\"datum: %2d.%2d.%4d - cislo: %04X hexa\\n\", dnes.datum.den, dnes.datum.mesic, dnes.datum.rok + 1980, dnes.cislo); dnes.datum.den = den; printf(\"datum: %2d.%2d.%4d - cislo: %04X hexa\\n\", dnes.datum.den, dnes.datum.mesic, dnes.datum.rok + 1980, dnes.cislo); dnes.datum.mesic = mesic; printf(\"datum: %2d.%2d.%4d - cislo: %04X hexa\\n\", dnes.datum.den, dnes.datum.mesic, dnes.datum.rok + 1980, dnes.cislo); dnes.datum.rok = rok - 1980; printf(\"datum: %2d.%2d.%4d - cislo: %04X hexa\\n\", dnes.datum.den, dnes.datum.mesic, dnes.datum.rok + 1980, dnes.cislo); return 0; }</pre><p> </p> </div>"

    @newtext = CGI.escape(@text)
  end

end
