%limpeza
clear, clc, close all 
figure(1);

%Imagem Lena.bmp
i=imread('Lena.bmp');
alfa=unique(i);
subplot(3,2,1);
dados=HistogramaAgrup(i,alfa, 'Lena');
EA_Lena=EntropiaAgrup(dados)

% Imagem CT1.bmp
i=imread('CT1.bmp');
alfa=unique(i);
subplot(3,2,2);
dados=HistogramaAgrup(i,alfa, 'CT1');
EA_CT1=EntropiaAgrup(dados)


%Imagem binaria.bmp
i=imread('Binaria.bmp');
alfa=unique(i);
subplot(3,2,3);
dados=HistogramaAgrup(i,alfa, 'Binaria');
EA_Binaria=EntropiaAgrup(dados)

%Texto.txt
FILE=fopen('Texto.txt','r');
x=fscanf(FILE,'%s');
alfa=['A':'Z' 'a':'z'];
%transforma a matriz alfa num array "single precision"
alfa=single(alfa);
x=single(x);
subplot(3,2,4);
dados=HistogramaAgrup(x,alfa, 'Texto');
EA_Texto=EntropiaAgrup(dados)


%saxriff.wav
[x,fs]=audioread('saxriff.wav');
%Number of bits per sample encoded in the audio file. [.BitsPerSample]
nbits=audioinfo('saxriff.wav');
d=2/(2^(nbits.BitsPerSample));
alfa=-1:d:1-d;
subplot(3,2,5);
dados=HistogramaAgrup(x,alfa,'Saxriff');
EA_Saxriff=EntropiaAgrup(dados)