feature 'Gerenciar Despesa' do

  scenario 'Incluir Despesa' do 
    visit new_despesa_path
    preencher_e_verificar_despesa
  end

  scenario 'Alterar Despesa' do 
    despesa = FactoryGirl.create(:despesa)
    visit edit_despesa_path(despesa)
    preencher_e_verificar_despesa

  end

   scenario 'Excluir despesa' do 
    despesa = FactoryGirl.create(:despesa)
    visit despesas_path
    click_link('Destroy')

  end

  def preencher_e_verificar_despesa

    fill_in 'Nomedespesa',     :with => "aluguel"
    fill_in 'Datavencimento', :with => "20-01-2016"
    fill_in 'Valor',     :with => "100000"
    fill_in 'Saldo', :with => "000"

    click_button 'Salvar'

    expect(page).to have_content 'Nomedespesa: aluguel'
    expect(page).to have_content 'Datavencimento: 20-01-2016'
    expect(page).to have_content 'Valor: 100000'
    expect(page).to have_content 'Saldo: 000'
  end
end
