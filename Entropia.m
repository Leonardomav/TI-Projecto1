function entropia = Entropia(dados)
    soma=sum(dados);
    dados = dados(dados~=0);
    probabilidade = dados/soma;
    %multiplica ponto a ponto
    entropia = -sum( probabilidade .* log2(probabilidade));
end