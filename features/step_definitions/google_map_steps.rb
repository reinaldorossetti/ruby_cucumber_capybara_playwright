#language: pt
#encoding: utf-8

Before do
  visit '/'
  Capybara.current_session.driver.on_save_screenrecord do |video_path|
    Allure.add_attachment(
      name: "screenrecord - #{example.description}",
      source: File.read(video_path),
      type: Allure::ContentType::WEBM,
      test_case: true,
      )
  end
end

After do
  save_screenshot
end

Dado('dado que esteja na tela desejada') do
  @pravoce = PessoaFisica.new
  @pravoce.pra_voce_tela
end

Quando('seleciono Onde usar meu cartão VR') do
  @resultado = @pravoce.visualizar_mapa
end

Entao('valido que o mapa do Google abriu em tela') do
  expect(@resultado).to equal(true)
end
