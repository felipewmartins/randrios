json.array!(@eventos) do |evento|
  json.extract! evento, :id, :nome, :descricao, :inicio, :fim, :fornecedor, :vagas, :local, :valor
  json.url evento_url(evento, format: :json)
end
