class PageForm < SitePrism::Page
  set_url 'https://docs.google.com/forms/d/e/1FAIpQLSeo6MJqkSHkyScRsLflp9z1yh_Z5G2ufqWBB-VPVYinTMT7fg/viewform?vc=0&c=0&w=1&flr=0'

  element :impt_email, '#identifierId'
  element :impt_password, '#password .whsOnd'
  element :div_next, '#identifierNext'
  element :div_pwd_next, '#passwordNext'
  element :div_text, '.freebirdFormviewerComponentsQuestionTextRoot .quantumWizTextinputPapertextareaInput'
  element :div_data, '.quantumWizTextinputPaperinputInputArea .quantumWizTextinputPaperinputInput'
  element :div_radio, '#i9'
  element :div_check_list, '#i26'
  elements :span_submit, '.appsMaterialWizButtonPaperbuttonLabel'

  def set
    impt_email.set 'desafioe2e@gmail.com'
    div_next.click
    sleep(3)
    impt_password.set 'Abc123$%'
    div_pwd_next.click
  end

  def informacao_form
    div_text.click
    div_text.set 'Formulário Desafio'
    div_radio.click
    div_check_list.click
    div_data.set '23091993'
    span_submit.last.click
  end
end
