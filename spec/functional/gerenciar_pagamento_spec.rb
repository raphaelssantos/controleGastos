feature 'Gerenciar Pagamento' do

  before(:each) do
    @despesa = create(:despesa, nomedespesa: "luz")
  end

  let(:dados) do {
    despesa: "luz",
    formapagamento: "dinheiro"
   }
  end

  scenario 'Incluir Pagamento' do
    visit new_pagamento_path
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Alterar Pagamento' do 
    pagamento = FactoryGirl.create(:pagamento, despesa: @despesa)
    visit edit_pagamento_path(pagamento)
    preencher(dados)
    click_button 'Salvar'
    verificar(dados)
  end

  scenario 'Excluir Pagamento' do 
    pagamento = FactoryGirl.create(:pagamento, despesa: @despesa)
    visit pagamentos_path
    click_link 'Destroy'
  end

  def preencher(dados)
    select dados[:despesa], from: "Nome"
    fill_in 'Formapagamento',  with: dados[:formapagemento]
  end

  def verificar(dados)
    page.should have_content "despesa: #{dados[:Despesa]}"
    page.should have_content "Formapagamento #{dados[:formapagamento]}"
  end
end
