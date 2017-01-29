function aux = HistogramaAgrup(p, alfa, titulo)
    %transforma matriz "p" num array "parray"
    parray = reshape(p',1,[]);
    new_p = vec2mat(parray, 2);
    [comb1, comb2]=meshgrid(alfa);    
    AlfaComb=[comb1(:) comb2(:)];
    size_a=size(AlfaComb);
    aux=zeros(1, size_a(1));

    for i=1:size_a(1)
        par = AlfaComb(i, :);
        aux(i) = sum(all(bsxfun(@eq, par, new_p),2));
        %bsxfun -> element wise binary operations (neste caso @eq [equals])
        %all dim = 2 -> aplica && em cada linha
    end
    
    bar(aux)
    ylabel('Ocorrências');
    xlabel('Alfabeto');
    title(titulo);
end