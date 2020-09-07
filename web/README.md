# Automação de envio de formulário
Projeto de automação para envio de formulário QA form

## Uso

Para executar algum cenário / suíte:
- Para execução do cenário é necessário o uso do comando:
  - $ cucumber -t <TAG>
- É necessário atualiza/instalar as gems do cucumber, segue alguns exemplos de algumas gemas fundamentais para execução do cenário:
  - A atualização pode ser realizada atravez do 'bundle install'
  - capybara
  - selenium-webdriver
  - site_prism
  - rack-test
  - cucumber
- É necessário que possua e o chrome driver dentro da pasta C:/windows
    - O download pode ser realizado através do https://chromedriver.chromium.org/downloads

## Desenvolvimento:

- Foi escolhido o padrão de escrita em portugues no gherkin do cenário para melhor entendimento
  - Exemplo do padrão seguido Padrão:
    - Como <ator>
    - Quero <verbo no infinitivo> <o que?> <como?> <onde?>
    - Para <verbo no infinitivo> <o que?> <como?> <onde?>
- Os metodos set e informacao_form foram criados para mantet o arquivo de steps mais objetivo
