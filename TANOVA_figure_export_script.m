subplot(7,2,[3:4])
times = [-100:999] %time intervall, how many time points used by analysis
a = 1-squeeze(rd.PTanova(1,4,:,1)); %first number = results column, second number = row
a(a<0.5) = 0.5;
a = squeeze(rd.PTanova(1,4,:,1));
a(a>0.1) = 0.1;
surface([times],1:2,transpose([a,a]))
shading flat
caxis([0 0.05])
zlim ([0 0.05])
xlim([-99 1000])
colormap hsv
%freezeColors
%hc = colorbar; 
%freezeColors(hc)
set(gca,'YTick',[1.5],'YTickLabel',['TANOVA'])


