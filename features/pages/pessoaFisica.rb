class PessoaFisica

  include PageBase

  # uso variaveis de classe para armazenar o valor do meu elemento, sem precisar do site-prism.
  @@pra_voce_link = '.vr-quick-navigation a'
  @@rede_credenciada_btn = '.vr-hero a[href="#rede-credenciada"]'
  @@filtrar_cartao_btn = '#buttonFiltrar'
  @@imagem_alimentacao_img = 'img[alt="logo vr Alimentação"]'
  @@confirmar_filtro_btn = '#buttonFiltrarCards'
  @@confirmar_mapa = "$('div#map').is(':visible');"

  def pra_voce_tela
    first(@@pra_voce_link, text: 'Pra Você', visible: true).hover.click
  end

  def visualizar_mapa
    click_fast(@@rede_credenciada_btn)
    find(@@filtrar_cartao_btn, visible: true).click
    find(@@imagem_alimentacao_img, visible: true).hover.click
    find(@@confirmar_filtro_btn, visible: true).click
    evaluate_script(@@confirmar_mapa)
  end

end
