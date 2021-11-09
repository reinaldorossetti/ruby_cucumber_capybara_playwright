# Projeto usando o Httparty e Cucumber.

A configuração (importe das gems) está dentro do **suport/env.rb** e a instância do Httparty está dentro do módulo Http, com isso eu elimino muito código desnecessário.

# PASSO A PASSO

**1 - Faça um clone no projeto no seu PC.**

git clone https://github.com/reinaldorossetti/ruby_cucumber_httparty.git

**2 - Passo de entre na pasta do projeto**
```
cd ruby_cucumber_httparty
```
**3 - Passo instale as dependências**
```
bundle install
npx playwright install
```
** Precisa instalar a gem, comando "gem install bundle", sem aspas duplas.

**4- Passo rode o nosso projeto, abrar o terminal em tests e envie o comando abaixo:**

```
bundle exec cucumber
bundle exec cucumber features/specs/verbo_get.feature
```
Para visualizar o relatório gerado do allure report, segue o link abaixo:
```
https://reinaldorossetti.github.io/ruby_cucumber_httparty/
```
Para adiciona compatibilidade com linux x86 e x64
```
bundle lock --add-platform x86_64-linux
```
Rodar local com report do cucumber.
```
bundle exec cucumber BROWSER=firefox HEADLESS=false --format html --out=report/report.html
bundle exec cucumber BROWSER=chromium --format html --out=report/report.html
bundle exec cucumber BROWSER=webkit --format html --out=report/report.html
```

Em caso de Erro no Windows de C Runtime:
https://docs.microsoft.com/en-US/cpp/windows/latest-supported-vc-redist?view=msvc-170

Referências:  
https://playwright-ruby-client.vercel.app/docs/article/getting_started  
https://github.com/YusukeIwaki/capybara-playwright-driver  
https://github.com/ruby-json-schema/json-schema/tree/master  
https://github.com/jnunemaker/httparty  
