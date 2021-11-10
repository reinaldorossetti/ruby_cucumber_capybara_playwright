# Projeto usando Capybara e o driver do Playwright

A biblioteca abaixo é usada como driver para o capybara, o capybara foi desenhado para funcionar com vários drivers, o selenium nem sequer é o driver padrão do mesmo, mas sim o rack_test, podemos dizer que o driver faz chamadas diretas para a biblioteca em javascript, por incrivel que pareça é comum fazer isso no ruby, ruby on rails faz isso a muito tempo. Por ser muito rápido o playwright não vi nenhum problema de performance nisso, pelo contrário no site testado foi preciso colocar um delay de 500ms entre os comandos, vai ele vai rápido demais e não leu o componente na DOM corretamente gerando falso negativo.

- *default_driver* (Symbol = `:rack_test`) - The name of the driver to use by default. -

```
gem 'playwright-ruby-client'
```

# PASSO A PASSO

**1 - Faça um clone no projeto no seu PC.**

git clone https://github.com/reinaldorossetti/ruby_cucumber_httparty.git

**2 - Passo de entre na pasta do projeto**
```
cd ruby_cucumber_httparty
```
**3 - Passo instale as dependências**
```
npx playwright install
bundle install
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
