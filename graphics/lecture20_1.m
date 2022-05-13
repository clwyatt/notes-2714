H = tf([20000],[1,300,20000]);
[mag,ph,w] = bode(H);

% Create a nice bode plot 
hFig = figure();
hold on;

subplot(2,1,1);
hm = semilogx(w,20*log10(squeeze(mag)));
grid on;
hTitle  = title ('Frequency Response');
hYLabel1 = ylabel('Magnitude (dB)');
set(gca, 'FontSize', 14, 'YTick', -60:10:20, ...
    'Box', 'off', 'LineWidth', 2);

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

set(gcf, 'PaperPositionMode', 'auto');
print -dpng lecture20_1.png
