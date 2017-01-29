function H_Entropia = EntropiaHuffman(dados)
    soma=sum(dados);
    dados = dados(dados~=0);
    probabilidade = dados/soma;

    H_Entropia=sum(probabilidade .* hufflen(dados));
end