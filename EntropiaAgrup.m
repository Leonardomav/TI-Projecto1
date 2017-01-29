function Entropia_A = EntropiaAgrup(dados)
    soma=sum(dados);
    dados = dados(dados~=0);
    probabilidade = dados/soma;
    Entropia_A = -sum(probabilidade.*log2(probabilidade))/2;
end