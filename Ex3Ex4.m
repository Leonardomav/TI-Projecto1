%limpeza
clear, clc, close all

%Imagem Lena.bmp
x=imread('Lena.bmp');
alfa=unique(x);
subplot(3,2,1);
dados=Histograma(x,alfa, 'Lena');
E_Lena=Entropia(dados)
H_Lena=EntropiaHuffman(dados) %Execicio 4
 
% Imagem CT1.bmp
x=imread('CT1.bmp');
alfa=unique(x);
subplot(3,2,2);
dados=Histograma(x,alfa, 'CT1');
E_CT1=Entropia(dados)
H_CT1=EntropiaHuffman(dados) %Execicio 4

%Imagem binaria.bmp
x=imread('Binaria.bmp');
alfa=unique(x);
subplot(3,2,3);
dados=Histograma(x,alfa, 'Binaria');
E_Binaria=Entropia(dados)
H_Binaria=EntropiaHuffman(dados) %Exercicio 4

%Texto.txt
FILE=fopen('Texto.txt','r');
x=fscanf(FILE,'%s');
alfa=['A':'Z' 'a':'z'];
%transforma array de letras nos respetivos numeros;
alfa=single(alfa);
subplot(3,2,4);
dados=Histograma(x,alfa, 'Texto');
E_Texto=Entropia(dados)
H_Texto=EntropiaHuffman(dados) %Execicio 4

%saxriff.wav
[x,fs]=audioread('saxriff.wav');
nbits=audioinfo('saxriff.wav');
d=2/(2^(nbits.BitsPerSample));
alfa=-1:d:1-d;
subplot(3,2,5);
dados=Histograma(x,alfa,'Saxriff');
E_Saxriff=Entropia(dados)
H_Saxriff=EntropiaHuffman(dados) %Exercicio 4