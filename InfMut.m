function dados = InfMut(query, target, alfa, step)
    s = length(target)-length(query)+1;
    dados = zeros(1,s);
    dadosq = histc(query, alfa);
    
    for i=1:step:s;
        janela=target(i:i+length(query)-1); %vai avançando a query
        dadosj=histc(janela, alfa);
        res = Entropia(dadosq) + Entropia(dadosj) - EntropiaConj(alfa,query,janela);
        dados(i) = res;
    end
end