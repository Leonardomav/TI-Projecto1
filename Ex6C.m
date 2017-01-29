%limpeza
clear, clc, close all

query = audioread('saxriff.wav');
nbits=audioinfo('saxriff.wav');
query=query(:,1)*(2^nbits.BitsPerSample);
step=round(length(query)/4);
d=2/(2^(nbits.BitsPerSample));
alfa=(-1:d:1-d)*(2^nbits.BitsPerSample);


container=zeros(7,1);
sprintf('Lista de máximos informação mútua máxima');
for i=1:7
    target = audioread(sprintf('Song0%d.wav', i));
    target=target(:,1)*(2^nbits.BitsPerSample);
    info = InfMut(query,target,alfa,step);
    container(i,1)=max(info);
    infoplot=info(info~=0);
    subplot(4,2,i);
    bar(infoplot);
    title(sprintf('Song0%d.wav', i));
end
[sorted, index]=sort(container,'descend');
for i=1:7
    disp(sprintf('Song %d -> %f\n', index(i), container(8-i)));
end
