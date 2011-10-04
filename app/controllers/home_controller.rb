class HomeController < ApplicationController
  def index
  end

  def download_pdf_pman
    send_file("#{Rails.root}/app/assets/Texto_PMAN_Integral-2011_09_15.pdf",
              :filename => "Texto_PMAN_Integral -2011_09_15.pdf",
              :type => "application/pdf")
  end

  def download_pdf_notas
    send_file("#{Rails.root}/app/assets/Notas_e_Bibliografia_consultada_-_2011_09_23.pdf",
              :filename => "Notas_e_Bibliografia_consultada_-_2011_09_23.pdf",
              :type => "application/pdf")
  end
  def download_pdf_lista
    send_file("#{Rails.root}/app/assets/Lista_de_abreviaturas_-_2011_09_23.pdf",
              :filename => "Lista_de_abreviaturas_-_2011_09_23.pdf",
              :type => "application/pdf")
  end
end