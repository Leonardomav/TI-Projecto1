function entropia_conj = EntropiaConj(alfa,query,janela)
    size_c = size(query,1);
    plus= - min(min(query), min(janela)) +1; %evitar indices negativos em dados
    dados=zeros(2*length(alfa));
    
    for i=1:size_c
        dados(query(i,1)+plus,janela(i,1)+plus) = dados(query(i,1)+plus,janela(i,1)+plus)+1;
    end
    
    soma=sum(sum(dados));
    dados = dados(dados~=0);
    probabilidade = dados/soma;
    entropia_conj = -sum( probabilidade .* log2(probabilidade));
end