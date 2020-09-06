Dado('possuir um usuário cadastrado para envio de formulário QA Form') do
  @page_compra = PageCompra.new
  @page_compra.load
  @page_compra.set
end

Quando('realizar o preenchimento do formulário QA Form') do
  @page_compra.informacao_form
end

Então('validar que o envio do formulário foi concluido') do
  @menssage = find('.freebirdFormviewerViewResponseConfirmationMessage')
  expect(@menssage.text).to eql('Sua resposta foi registrada.')
end
