clear all; close all;
R = 99.2e3;
C = 1.6e-9;
a = 1/(R*C);

% simple example
H = tf([a],[1,a]);
[mag,ph,w] = bode(H);

% Create a nice bode plot 
hFig = figure();
set(hFig, 'Visible', 'off');
hold on;

subplot(2,1,1);
hm = semilogx(w,20*log10(squeeze(mag)));
grid on;
hTitle  = title ('Frequency Response - first order');
hYLabel1 = ylabel('Magnitude (dB)');
set(gca, 'FontSize', 14, 'YTick', -60:10:20, 'Box', 'off', 'LineWidth', 2);
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
print -dpng lecture24_1.png

%quit;
