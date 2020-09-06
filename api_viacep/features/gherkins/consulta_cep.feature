# language:pt

Funcionalidade: Consulta_de_cep_na_API_ViaCEP
  Como uma aplicação de APIs de consulta
  Quero chamar a API via cep
  Para validar a funcionalidade do mesmo

  @Consulta_de_API_ViaCEP
  Esquema do Cenário: Validar consulta de API ViaCEP
    Dado ter uma massa de entrada para consulta na API ViaCEP
      | tipo | <tipo> |
    Quando executar a API de consulta ViaCEP
    Então validar o retorno esperado para a consulta realizada atravez da API ViaCEP

    Exemplos:
      | tipo     |
      | valido   |
      | invalido |
      | vazio    |