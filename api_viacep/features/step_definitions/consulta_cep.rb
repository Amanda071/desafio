Dado('ter uma massa de entrada para consulta na API ViaCEP') do |tipo|
  @cenarios = tipo.rows_hash

  @request = if @cenarios['tipo'].eql?('valido')
              MASSA['via_cep']['valido']
             else
              case @cenarios['tipo']
              when 'invalido' then MASSA['via_cep']['invalido']
              when 'vazio' then MASSA['via_cep']['vazio']
              end
             end
end

Quando('executar a API de consulta ViaCEP') do
  @response = HTTParty.get(@request)
end

Então('validar o retorno esperado para a consulta realizada atravez da API ViaCEP') do
  if @cenarios['tipo'].eql?('valido')
    expect(@response.response.code).to eql(MASSA['code_http']['code_ok'])
    expect(@response.response.message).to eql(MASSA['messages_http']['message_ok'])
    expect(@response['cep']).to eql(MASSA['result']['cep'])
    expect(@response['localidade']).to eql(MASSA['result']['localidade'])
  else
    case @cenarios['tipo']
    when 'invalido'
      expect(@response.response.code).to eql(MASSA['code_http']['code_ok'])
      expect(@response.response.message).to eql(MASSA['messages_http']['message_ok'])
      expect(@response['erro']).to be true
    when 'vazio'
      expect(@response.response.code).to eql(MASSA['code_http']['code_bad_request'])
      expect(@response.response.message).to eql(MASSA['messages_http']['message_bad_request'])
    end
  end
end
