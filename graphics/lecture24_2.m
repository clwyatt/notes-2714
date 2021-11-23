clear all; close all;

R1 = 74.2e3;
R2 = 1.33e6;
C1 = 1.6e-9;
C2 = 160e-12;

a = (R1+R2)/(R1*R2*C1);
b = 1/(R1*R2*C1*C2);

% simple example
H = tf([b],[1,a,b]);
[mag,ph,w] = bode(H);

% Create a nice bode plot 
hFig = figure();
set(hFig, 'Visible', 'off');
hold on;

subplot(2,1,1);
hm = semilogx(w,20*log10(squeeze(mag)));
grid on;
hTitle  = title ('Frequency Response - second order');
hYLabel1 = ylabel('Magnitude (dB)');
set(gca, 'FontSize', 14, 'YTick', -90:10:20, 'Box', 'off', 'LineWidth', 2);
subplot(2,1,2);
hp = semilogx(w,squeeze(ph*(pi/180)));
grid on;
hYLabel2 = ylabel('Phase (radians)');
hXLabel = xlabel('Frequency (rad/s)');
set(gca, 'FontSize', 14, 'Box', 'off', 'LineWidth', 2);

set(hm, 'linewidth', 2);
set(hp, 'linewidth', 2);

set([hXLabel, hYLabel1, hYLabel2]  , ...
     'FontSize'   , 14          );
set( hTitle                    , ...
     'FontSize'   , 14          , ...
     'FontWeight' , 'bold'      );

% write a nice tikz version
%matlab2tikz('plot.tikz', 'figurehandle', hFig);

set(gcf, 'PaperPositionMode', 'auto');
print -dpng lecture24_2.png

%quit;
