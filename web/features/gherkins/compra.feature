# language:pt

Funcionalidade: Formulário QA Form - Validar o envio do formulário QA Form
  Como um usuário cadastrado no Forms
  Quero acessar o sistema Forms
  Para preenchimento e envio de formulário QA Forms

  @validar_envio_formulario
  Cenário: Validar envio de formulário QA Form
    Dado possuir um usuário cadastrado para envio de formulário QA Form
    Quando realizar o preenchimento do formulário QA Form
    Então validar que o envio do formulário foi concluido