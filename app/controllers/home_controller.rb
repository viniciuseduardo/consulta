class HomeController < ApplicationController
  def index
  end
  
  def download_pdf
    send_file("#{Rails.root}/app/assets/Texto_PMAN_Integral-2011_09_15.pdf",
              :filename => "Texto_PMAN_Integral -2011_09_15.pdf",
              :type => "application/pdf")  
  end
end