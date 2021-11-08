#language: pt
#encoding: utf-8
#require_relative '../../pages/pessoaFisica.rb'

Before do
  visit '/'
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
