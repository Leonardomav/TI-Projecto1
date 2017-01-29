%limpeza
clear, clc, close all

query = audioread('saxriff.wav');
targ1 = audioread('target01 - repeat.wav');
targ2 = audioread('target02 - repeatNoise.wav');
nbits=audioinfo('saxriff.wav');
query=query(:,1)*(2^nbits.BitsPerSample);
targ1=targ1(:,1)*(2^nbits.BitsPerSample);
targ2=targ2(:,1)*(2^nbits.BitsPerSample);
step=round(length(query)/4);
d=2/(2^(nbits.BitsPerSample));
alfa=(-1:d:1-d)*(2^nbits.BitsPerSample);

inf1 = InfMut(query, targ1, alfa, step);
inf2 = InfMut(query, targ2, alfa, step);
inf1=inf1(inf1~=0)
inf2=inf2(inf2~=0)

figure(1);
plot(inf1);
hold on; %hold the 1º graph in the figure, so you can overlay other graph;
plot(inf2);


