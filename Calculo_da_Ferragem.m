clc

disp("Este programa tem como proposta, calcular a quantidade de ferro usada na armadura ou ferragem para construcao de Pilares e Brocas")
continuar1 = (yes_or_no);
if (continuar1 == 0);
  disp ("Obrigado!")
  exit

  else (continuar1 == 1);
  disp ('')
  disp("pronto! Agora precisaremos de algumas informacoes acerca do seu projeto!")
  disp ('')
endif


EST=input("o que deseja calcular? Pilar(1) Sapata(2) Baldrame(3) Broca(4) Grafico(0)");
while  (EST > 4)
  disp("")
  disp("essa não é uma opção valida, por favor escolha novamente")
  disp("")
  EST=input("o que deseja calcular? Pilar(1) Sapata(2) Baldrame(3) Broca(4) Grafico(0)");

endwhile
if (EST == 1);
  AP=input("Muito bem, Qual  a Altura do Pilar?  ");
  QP=input ("Qual a quantidade de Pilares? ");
  LP=input ("Qual a largura do pilar? ");
  P1= 4*AP;
  P1_2= 0.15;
  R = ((P1*QP)/12);
  P2= P1*QP;

  P3= ((P1*QP)/12);
  P4= LP/AP;
  P5= P4*LP;
  P6= P5*AP;
  P1_3= P1*QP;

  fprintf("Essa e a metragem de ferro necessaria: %1.2f",  round(P1_3))

  disp("")

  fprintf("a quantidade de de varas 3/8 que sera usada e : %1.2f ",  round(P3))

  disp("")

  P6_1= ((((AP/P1_2)*LP)*QP)/12);
  fprintf("Essa e a quantidade de ferro 1/4 necessaria : %1.2f", round(P6_1) )

  P7 = P6/12;

  disp("")

  ML= (((AP/P1_2)*LP)*QP);
  fprintf("Essa e a quantidade de estribos : %1.2f ", round(ML))

elseif
 (EST == 2);

  fprintf("Calcularemos aqui a ferragem das Sapatas")
  disp("")
  QS = input("Qual a quantidade de Sapatas? ");
  AR = input("qual o tamanho da sua Sapata? ");
  AR_1 = 14;
  QS*AR;
  SP = AR_1*QS;
  SP_1 = SP*AR;
  SP_2 = SP_1/12;

  fprintf(" a metragem de ferro sera : %1.2f",  round(SP_1))

  disp("")

  fprintf(" Essa é a quantidade de varas necessaria : %1.2f",  round(SP_2))
  disp("")
  fprintf("obrigado por utilizar o programa")

 elseif ( EST == 3);
  fprintf("calcularemos aqui a ferragem da Viga Baldrame");
   disp("");
   MB = input(" Qual a metragem linear da construcao?");
   FVB = 4*MB; %metragem de 1/4
   FVB_1 = FVB/12; %quantidade de varas
   AVB = input("Qual a altura da sua viga?");
   AVB_1 = ((AVB*2)+0.30);
   EVB = MB/0.15;
   ME_VB = EVB*AVB_1;
   Ml_VB = ME_VB/12;
   fprintf("Essa é a metragem de ferro 3/8 necessaria: %1.2f", round(FVB))

   disp ("")

   fprintf("Essa é a quantidadede varas 3/8 necessaria: %1.2f", round(FVB_1))
   disp("")
   fprintf(" Essa é a metragem de ferro 1/4 necessaria: %1.2f", round(ME_VB))
   disp("")
   fprintf("Essa é a quantidade de estribos necessaria: %1.2f", round(EVB))
   disp("")
   fprintf("Essa é a quantidade de varas 1/4 necessaria: %1.2f", round(Ml_VB))

 elseif( EST == 4)
    fprintf("calcularemos a ferragem das Brocas")
     disp("")
   PB= input("Qual a profundidade da broca? ");
   QB = input("Qual a quantidade de brocas? ");
   ARR = input("Qual a Altura do Arranque? ");
   HB = PB+0.30+ARR; %altura completa do ferro com o baldrame e o arranque%
   FB = 4*HB; %metragem de ferro em cada broca%
   MF_B = HB*FB; %metragem de ferro total%
   MF_B2 = MF_B/12; %quantidade de varas%
   QE_B = PB/0.15; %Quantidade de Estribos por Broca%
   QE_B2 = 0.50*QE_B; % Metragem de ferro 1/4 por broca%
   QE_T = QE_B*QB; % Quantidade toltal de estribos%
   ML_E = QE_B2*QB; %metragem de 1/4
   ML_E2 = ML_E/12; % quantidade varas de 1/4

   disp("")

   fprintf ("Essa é a metragem de ferro 3/8 necessaria %1.2f", round(MF_B))
   disp("")
   fprintf("Essa é a quatidade de varas necessaria %1.2f", round(MF_B2))
   disp("")
  fprintf("Essa é a quantidade de estribos por broca %1.2f", round(QE_B))
  disp("")
  fprintf("Essa é a quantidade total de estribos %1.2f", round(QE_T))
  disp("")
  fprintf("Essa é a metragem de ferro 1/4 necessaria %1.2f", round(ML_E))

elseif( EST == 0)
 OPC = input(" qual tipo de grafico deseja? (1) Barras, (2) torta (3) Simples")
  switch (OPC);
  case 1
   disp"grafico de barras"
   Estruturas = {'pilar', 'sapata', 'baldrame', ' broca'};
   resultados = [P2,SP_1,FVB,MF_B];
   bar(resultados);
   set(gca,'XTickLabel',Estruturas)
   title ("Comparativo de gasto");
   case 2
   disp "Grafico de torta"
   Estruturas = {'pilar', 'sapata', 'baldrame', ' broca'}
   resultados = [P2; SP_1; FVB; MF_B];
    clf;
   pie(resultados, Estruturas);
   colormap ([1,0,0;0,1,0;0,0,1;1,1,0;1,0,1;0,1,1]);
   axis ([-2,2,-2,2]);
  title ("Comparativo de gasto""Cheddar", "Swiss", "Camembert");
   case 3
  disp "grafico simples"

  AP = 3;
  QP = 10;
  LP = 0.70;
     P1= 4*AP;
    P1_2= 0.15;
    R = ((P1*QP)/12);
    P2= P1*QP;
    P3= ((P1*QP)/12);
    P4= LP/AP;
    P5= P4*LP;
    P6= P5*AP;
    P1_3= P1*QP;
    P6_1= ((((AP/P1_2)*LP)*QP)/12);
    ML= (((AP/P1_2)*LP)*QP);
QS = 10;
AR = 0.80;
AR_1 = 14;
QS*AR;
SP = AR_1*QS;
SP_1 = SP*AR;
SP_2 = SP_1/12;
            MB = 90;
            AVB = 0.30;
             FVB = 4*MB; %metragem de 3/8
             FVB_1 = FVB/12; %quantidade de varas
             AVB_1 = ((AVB*2)+0.30);
             EVB = MB/0.15;
             ME_VB = EVB*AVB_1;
             Ml_VB = ME_VB/12;
  PB = 3.80;
  QB = 10;
  ARR = 0.80;
   HB = PB+0.30+ARR; %altura completa do ferro com o baldrame e o arranque%
   FB = 4*HB; %metragem de ferro em cada broca%
   MF_B = HB*FB; %metragem de ferro total%
   MF_B2 = MF_B/12; %quantidade de varas%
   QE_B = PB/0.15; %Quantidade de Estribos por Broca%
   QE_B2 = 0.50*QE_B; % Metragem de ferro 1/4 por broca%
   QE_T = QE_B*QB; % Quantidade toltal de estribos%
   ML_E = QE_B2*QB; %metragem de 1/4
   ML_E2 = ML_E/12; % quantidade varas de 1/4

  x = 1:4
  y = [P2; SP_1; FVB; MF_B];
  plot(x,y, '--mo','linewidth', 3, 'markersize', 12, 'markerfacecolor', 'y')
  xlabel ("Estruturas");
  ylabel ("Gasto de ferro");
   title ("Comparativo de gasto");
 endswitch
endif
teste 