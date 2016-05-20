json.array!(@receitas) do |receita|
  json.extract! receita, :id, :nomereceita, :datavencimento, :valor, :saldo
  json.url receita_url(receita, format: :json)
end
