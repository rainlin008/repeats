function img = render_rd_div(img,q,cc,l)
c = reshape(LINE.rd_div(q,cc,l),[],3);
img = ...
    insertShape(img,'circle',c,'LineWidth',8,'Color','w');
img = ...
    insertShape(img,'circle',c,'LineWidth',5,'Color',[255,140,0]);