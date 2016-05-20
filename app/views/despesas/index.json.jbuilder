json.array!(@despesas) do |despesa|
  json.extract! despesa, :id, :nomedespesa, :datavencimento, :valor, :saldo
  json.url despesa_url(despesa, format: :json)
end
