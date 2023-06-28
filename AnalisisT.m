
%%Análisis Estadístico
%clc; clear;
ID = 'BiografiaPersonal.txt';
fileID = fopen(ID,'r');
%fprintf(fileID,'%4.4f\n')
formatSpec = '%c';
A = fscanf(fileID,formatSpec)
fclose(fileID);

B

countL = zeros(30,1);

n=length(A);

for i=1:n
    switch A(i)
        case {'a','A'} %|| (A(i) == 'Ã' && A(i+1) == '¡')
            countL(1)=countL(1)+1;
        case {'b','B'}
            countL(2)=countL(2)+1;
        case {'c','C'}
            countL(3)=countL(3)+1;
        case {'d','D'}
            countL(4)=countL(4)+1;
        case {'e','E'} %|| (A(i) == 'Ã' && A(i+1) == '©')
            countL(5)=countL(5)+1;
        case {'f','F'}
            countL(6)=countL(6)+1;
        case {'g','G'}
            countL(7)=countL(7)+1;
        case {'h','H'}
            countL(8)=countL(8)+1;
        case {'i','I'} %|| (A(i) == 'Ã' && A(i+1) == '-')
            countL(9)=countL(9)+1;
        case {'j','J'}
            countL(10)=countL(10)+1;
        case {'k','K'}
            countL(11)=countL(11)+1;
        case {'l','L'}
            countL(12)=countL(12)+1;
        case {'m','M'}
            countL(13)=countL(13)+1;
        case {'n','N'}
            countL(14)=countL(14)+1;
        case {'o','O'} %|| (A(i) == 'Ã' && A(i+1) == '³')
            countL(15)=countL(15)+1;
        case {'p','P'}
            countL(16)=countL(16)+1;
        case {'q','Q'}
            countL(17)=countL(17)+1;
        case {'r','R'}
            countL(18)=countL(18)+1;
        case {'s','S'}
            countL(19)=countL(19)+1;
        case {'t','T'}
            countL(20)=countL(20)+1;
        case {'u','U'} %|| (A(i) == 'Ã' && A(i+1) == 'º')
            countL(21)=countL(21)+1;
        case {'v','V'}
            countL(22)=countL(22)+1;
        case {'w','W'}
            countL(23)=countL(23)+1;
        case {'x','X'}
            countL(24)=countL(24)+1;
        case {'y','Y'}
            countL(25)=countL(25)+1;
        case {'z','Z'}
            countL(26)=countL(26)+1;
        case ' '
            countL(27)=countL(27)+1;
        case {'.',':'}
            countL(28)=countL(28)+1;
        case ','
            countL(29)=countL(29)+1;
        otherwise
            countL(30)=countL(30)+1;
    end
    if(A(i) == 'Ã')
       switch A(i+1)
           case '¡'
               countL(1)=countL(1)+1;
           case '©'
               countL(5)=countL(5)+1;
           case '-'
               countL(9)=countL(9)+1;
           case '³'
               countL(15)=countL(15)+1;
           case 'º'
               countL(21)=countL(21)+1; 
           case '±'
               countL(14)=countL(14)+1; 
           otherwise
               
       end
    end
end

%LetrasC = ['a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';' ';'. :';','];
LetrasC = char('abcdefghijklmnopqrstuvwxyz .,-');
X1 = categorical({'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','espacio','. o :',','});
%X1 = reordercats(X1,{'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z',' ','. o :',','});
Letras = [1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;0];
auxGraph1=zeros(29,1);

for i=1:29
    auxGraph1(i)=countL(i);
end
cantLetras = [countL Letras];
ordenLetras = sort(countL);
graph1=bar(X1,auxGraph1);

z=0;
for i=1:30
    if (ordenLetras(i) == 0)
        z=z+1;
    end
end
arrayZno = zeros(30-z,2);
LetrasZno = zeros(30-z,1);
arrayZ = zeros(z,1);
j=1;
k=1;
for i=1:30
    if(cantLetras(i) ~= 0)
        arrayZno(j) = cantLetras(i);
        LetrasZno(j) = cantLetras(i);
        arrayZno(j+30-z) = cantLetras(i+30);
        j=j+1;
    else
        arrayZ(k) = cantLetras(i+30);
        k=k+1;
    end
end
ordenLetrasZno = sort(LetrasZno);
ordenLI = zeros(30-z,1);
for i=1:(30-z)
    for j=1:(30-z)
        if(ordenLetrasZno(i) == arrayZno(j))
            ordenLI(i) = arrayZno(j+30-z);
        end
    end
end
ordenArray = [ordenLetrasZno ordenLI]
maxRep = max(ordenLetrasZno);

vecLiterales = [arrayZ;ordenLI];
%%AsignaciónCaracteres
Lit={'a';'b';'c';'d';'e';'f';'g';'h';'i';'j';'k';'l';'m';'n';'o';'p';'q';'r';'s';'t';'u';'v';'w';'x';'y';'z';' ';'. :';',';'-'};
ordLit = zeros(30,1);
for i=1:30
    switch vecLiterales(i)
        case 1
            ordLit(i)  = 'a';
        case 2
            ordLit(i)  = 'b';
        case 3
            ordLit(i)  = 'c';
        case 4
            ordLit(i)  = 'd';
        case 5
            ordLit(i)  = 'e';
        case 6
            ordLit(i)  = 'f';
        case 7
            ordLit(i)  = 'g';
        case 8
            ordLit(i)  = 'h';
        case 9
            ordLit(i)  = 'i';
        case 10
            ordLit(i)  = 'j';
        case 11
            ordLit(i)  = 'k';
        case 12
            ordLit(i)  = 'l';
        case 13
            ordLit(i)  = 'm';
        case 14
            ordLit(i)  = 'n';
        case 15
            ordLit(i)  = 'o';
        case 16
            ordLit(i)  = 'p';
        case 17
            ordLit(i)  = 'q';
        case 18
            ordLit(i)  = 'r';
        case 19
            ordLit(i)  = 's';
        case 20
            ordLit(i)  = 't';
        case 21
            ordLit(i)  = 'u';
        case 22
            ordLit(i)  = 'v';
        case 23
            ordLit(i)  = 'w';
        case 24
            ordLit(i)  = 'x';
        case 25
            ordLit(i)  = 'y';
        case 26
            ordLit(i)  = 'z';
        case 27
            ordLit(i)  = ' ';
        case 28
            ordLit(i)  = '.';
        case 29
            ordLit(i)  = ',';
        otherwise
            ordLit(i)  = '-';
    end
end

vecLiterales2 = fliplr(vecLiterales')';

%%Letras MOrse
morse1 =[1 0 0 0 0 0 0 0];
morse2 =[1 0 1 0 0 0 0 0];
morse3 =[1 0 1 0 1 0 0 0];
morse4 =[1 0 1 0 1 0 1 0];
morse5 =[1 1 0 0 0 0 0 0];
morse6 =[1 1 1 1 0 0 0 0];
morse7 =[1 1 1 1 1 1 0 0];
morse8 =[1 0 1 1 0 0 0 0];
morse9 =[1 0 1 0 1 1 0 0];
morse10=[1 0 1 0 1 0 1 1];
morse11=[1 1 1 0 0 0 0 0];
morse12=[1 1 1 0 1 0 0 0];
morse13=[1 1 1 0 1 0 1 0];
morse14=[1 0 1 1 1 1 0 0];
morse15=[1 0 1 1 1 1 1 1];
morse16=[1 1 1 0 1 1 1 0];
morse17=[1 1 1 0 1 1 1 1];
morse18=[1 0 1 0 1 1 1 0];
morse19=[1 0 1 1 1 0 1 0];
morse20=[1 1 1 1 1 0 0 0];
morse21=[1 1 1 1 1 0 1 0];
morse22=[1 1 1 1 1 0 1 1];
morse23=[1 0 1 1 1 1 1 0];
morse24=[1 1 1 0 1 0 1 1];
morse25=[1 0 1 1 1 0 0 0];
morse26=[1 1 1 0 1 1 0 0];
morse27=[0 0 0 0 0 0 0 0];
morse28=[0 0 0 0 0 0 0 0];
morse29=[0 0 0 0 0 0 0 0];
morseN=[0 0 0 0 0 0 0 0];

matrizMorseAux = [morse1;morse2;morse3;morse4;morse5;morse6;morse7;morse8;morse9;morse10;morse11;morse12;morse13;morse14;morse15;morse16;morse17;morse18;morse19;morse20;morse21;morse22;morse23;morse24;morse25;morse26];
matrizMorse = zeros(30,8);
m1=1;
for i=1:30
    if(vecLiterales2(i) <= 26 && vecLiterales2(i) ~= 0)
        matrizMorse(i,1:8) = matrizMorseAux(m1,1:8);
        m1=m1+1;
    end
end
invOrdLit = fliplr(ordLit')';
%%Archivo
MatrizTraduccion = [fliplr(ordenLetras')' vecLiterales2 invOrdLit matrizMorse]
writematrix(MatrizTraduccion,'Traductor.xls');

%%Reproductor

for i=1:n2
    switch B(i)
        case {'a','A'}
            auxL=find(invOrdLit=='a');
            Reproductor(matrizMorse(auxL,1:8));
        case {'b','B'}
            auxL=find(invOrdLit=='b');
            Reproductor(matrizMorse(auxL,1:8));
        case {'c','C'}
            auxL=find(invOrdLit=='c');
            Reproductor(matrizMorse(auxL,1:8));
        case {'d','D'}
            auxL=find(invOrdLit=='d');
            Reproductor(matrizMorse(auxL,1:8));
        case {'e','E'}
            auxL=find(invOrdLit=='e');
            Reproductor(matrizMorse(auxL,1:8));
        case {'f','F'}
            auxL=find(invOrdLit=='f');
            Reproductor(matrizMorse(auxL,1:8));
        case {'g','G'}
            auxL=find(invOrdLit=='g');
            Reproductor(matrizMorse(auxL,1:8));
        case {'h','H'}
            auxL=find(invOrdLit=='h');
            Reproductor(matrizMorse(auxL,1:8));
        case {'i','I'}
            auxL=find(invOrdLit=='i');
            Reproductor(matrizMorse(auxL,1:8));
        case {'j','J'}
            auxL=find(invOrdLit=='j');
            Reproductor(matrizMorse(auxL,1:8));
        case {'k','K'}
            auxL=find(invOrdLit=='k');
            Reproductor(matrizMorse(auxL,1:8));
        case {'l','L'}
            auxL=find(invOrdLit=='l');
            Reproductor(matrizMorse(auxL,1:8));
        case {'m','M'}
            auxL=find(invOrdLit=='m');
            Reproductor(matrizMorse(auxL,1:8));
        case {'n','N'}
            auxL=find(invOrdLit=='n');
            Reproductor(matrizMorse(auxL,1:8));
        case {'o','O'}
            auxL=find(invOrdLit=='o');
            Reproductor(matrizMorse(auxL,1:8));
        case {'p','P'}
            auxL=find(invOrdLit=='p');
            Reproductor(matrizMorse(auxL,1:8));
        case {'q','Q'}
            auxL=find(invOrdLit=='q');
            Reproductor(matrizMorse(auxL,1:8));
        case {'r','R'}
            auxL=find(invOrdLit=='r');
            Reproductor(matrizMorse(auxL,1:8));
        case {'s','S'}
            auxL=find(invOrdLit=='s');
            Reproductor(matrizMorse(auxL,1:8));
        case {'t','T'}
            auxL=find(invOrdLit=='t');
            Reproductor(matrizMorse(auxL,1:8));
        case {'u','U'}
            auxL=find(invOrdLit=='u');
            Reproductor(matrizMorse(auxL,1:8));
        case {'v','V'}
            auxL=find(invOrdLit=='v');
            Reproductor(matrizMorse(auxL,1:8));
        case {'w','W'}
            auxL=find(invOrdLit=='w');
            Reproductor(matrizMorse(auxL,1:8));
        case {'x','X'}
            auxL=find(invOrdLit=='x');
            Reproductor(matrizMorse(auxL,1:8));
        case {'y','Y'}
            auxL=find(invOrdLit=='y');
            Reproductor(matrizMorse(auxL,1:8));
        case {'z','Z'}
            auxL=find(invOrdLit=='z');
            Reproductor(matrizMorse(auxL,1:8));
        case ' '
            auxL=find(invOrdLit==' ');
            Reproductor(matrizMorse(auxL,1:8));
        case {'.',':'}
            auxL=find(invOrdLit=='.');
            Reproductor(matrizMorse(auxL,1:8));
        case ','
            auxL=find(invOrdLit==',');
            Reproductor(matrizMorse(auxL,1:8));
        otherwise
            auxL=find(invOrdLit=='-');
            Reproductor(matrizMorse(auxL,1:8));
    end
end


