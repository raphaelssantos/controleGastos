json.array!(@pagamentos) do |pagamento|
  json.extract! pagamento, :id, :despesa_id, :formapagamento, :data, :valor
  json.url pagamento_url(pagamento, format: :json)
end
