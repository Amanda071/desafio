# Automação de API ViaCEP
Projeto de automação para consulta de API publica ViaCEP

## Uso

Para executar algum cenário / suíte:
- Para execução do cenário é necessário o uso do comando:
  - $ cucumber -t @Consulta_de_API_ViaCEP
  - caso desejem verificar o relatorio de reports cucumber -t @Consulta_de_API_ViaCEP --publish
- É necessário atualiza/instalar as gems do cucumber, segue alguns exemplos de algumas gemas fundamentais para execução do cenário:
  - A atualização pode ser realizada atravez do comando:
    -  gem install bundle
    -  bundle install
  - httparty
  - rspec
  - expect
  - pry

## Desenvolvimento:

- Foi escolhido o padrão de escrita em portugues no gherkin do cenário para melhor entendimento
  - Exemplo do padrão seguido Padrão:
    - Como <ator>
    - Quero <verbo no infinitivo> <o que?> <como?> <onde?>
    - Para <verbo no infinitivo> <o que?> <como?> <onde?>
- O metodo rows_hash está sendo utilizado pra mapeamento do data table descrito no gherkin
- A funcionalidade de MASSA está sendo utilizada para leitura de dados do arquivo massa.yaml
- O cenário do tipo valido está realizando a consulta de CEP valido atravez do arquivo massa.yaml
- O cenário do tipo invalido está realizando a consulta de CEP inexistente atravez do arquivo massa.yaml
- O cenário do tipo vazio não etá passando o valor do CEP na consulta para validação do bad request
