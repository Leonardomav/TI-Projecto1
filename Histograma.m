function [dados] = Histograma(p, alfa, titulo)
    parray = p(:); %transforma matriz "p" num array "parray"
    dados = histc(parray,alfa);
    bar(dados,0.75);
    ylabel('Ocorrências');
    xlabel('Alfabeto');
    title(titulo);
end