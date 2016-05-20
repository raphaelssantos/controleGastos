feature 'Gerenciar Receita' do

  scenario 'Incluir Receeita' do 
    visit new_receita_path
    preencher_e_verificar_receita
  end

  scenario 'Alterar Receita' do 
    receita = FactoryGirl.create(:receita)
    visit edit_receita_path(receita)
    preencher_e_verificar_receita

  end

   scenario 'Excluir receita' do 
    receita = FactoryGirl.create(:receita)
    visit receitas_path
    click_link('Destroy')

  end

  def preencher_e_verificar_receita

    fill_in 'Nomereceita',     :with => "acoes"
    fill_in 'Datavencimento', :with => "20-01-2016"
    fill_in 'Valor',     :with => "100000"
    fill_in 'Saldo', :with => "3000"

    click_button 'Salvar'

    expect(page).to have_content 'Nomereceita: acoes'
    expect(page).to have_content 'Datavencimento: 20-01-2016'
    expect(page).to have_content 'Valor: 100000'
    expect(page).to have_content 'Saldo: 3000'
  end
end
