clear all; close all;

c = [1,0,0.1716];
d = [0.2929, 0.5858, 0.2929];
w = -pi:0.01:pi;
H = (d(1)*exp(j*2*w) + d(2)*exp(j*w) + d(3))./(c(1)*exp(j*2*w) + c(2)*exp(j*w) + c(3));

% Create a nice FR plot 
hFig = figure();
hold on;

subplot(2,1,1);
hm = plot(w,20*log10(abs(H)));
grid on;
axis tight;
%axis([-pi, pi, -20, 5]);
hTitle  = title ('Frequency Response - second order');
hYLabel1 = ylabel('Magnitude (dB)');
set(gca, 'FontSize', 14, 'YTick', -100:20:0, 'LineWidth', 2);
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
print -dpng lecture25_3.png
