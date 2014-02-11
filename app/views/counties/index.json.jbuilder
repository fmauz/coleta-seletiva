json.county do
  json.extract! @county, :name, :code, :cnpj, :logradouro_prefeitura, :numero_prefeitura, :complemento_prefeitura, :bairro_prefeitura, :populacao_total_municipio, :populacao_urbana, :extensao_territorial, :indice_destinacao, :n_bairros, :domicilios_total, :populacao_rural, :cep_prefeitura
end