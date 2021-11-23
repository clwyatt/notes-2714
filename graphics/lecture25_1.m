clear all; close all;

a = 1/2;
w = -pi:0.01:pi;

H = a./(exp(j*w) + a);

% Create a nice FR plot 
hFig = figure();
%set(hFig, 'Visible', 'off');
hold on;

subplot(2,1,1);
hm = plot(w,20*log10(abs(H)));
grid on;
axis tight;
%axis([-pi, pi, -20, 5]);
hTitle  = title ('Frequency Response - first order a = 0.5');
hYLabel1 = ylabel('Magnitude (dB)');
set(gca, 'FontSize', 14, 'YTick', -20:5:5, 'LineWidth', 2);
subplot(2,1,2);
hp = plot(w,unwrap(angle(H)));
grid on;
axis tight;
%axis([-pi, pi, -pi, pi]);
hYLabel2 = ylabel('Phase (radians)');
hXLabel = xlabel('Frequency (rad/sample)');
set(gca, 'FontSize', 14, 'LineWidth', 2);

set(hm, 'linewidth', 2);
set(hp, 'linewidth', 2);

set([hXLabel, hYLabel1, hYLabel2]  , ...
     'FontSize'   , 14          );
set( hTitle                    , ...
     'FontSize'   , 14          , ...
     'FontWeight' , 'bold'      );


set(gcf, 'PaperPositionMode', 'auto');
print -dpng lecture25_1.png
