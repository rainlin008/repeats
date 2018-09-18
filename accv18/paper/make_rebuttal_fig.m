close all;
bright = 1.7;
img_name = 'cropped_dartboard';
img = Img('url',['data/' img_name '.jpg']);  
cid_cache = CidCache(img.cid, ...
                     { 'read_cache', true, 'write_cache', true });
dr = DR.get(img,cid_cache, ...
                {'type','all', ...
                 'reflection', false });
x = [dr(:).u];
cropped = img.data(200:875,80:475,:);
colors = {'g','r','c'};

load('output/cropped_dartboard_H4ql.mat');
figure;
image([80 475], [200 875], cropped/bright);
hold on;
LAF.draw(gca, x(:,stats_list.ransac(end).res.mss{1}), ...
         'Color','w', 'LineWidth',5);
LAF.draw(gca, x(:,stats_list.ransac(end).res.mss{1}), ...
         'Color','g','LineWidth',3);
axis equal;
axis tight;
axis off;
hold off;
export_fig( ['/home/jbpritts/Documents/accv18_rebuttal/fig/' ...
             'H4ql.png']);
ind = find(~isnan(model_list(1).Gs));
v = reshape(x(:,ind),3,[]);
H = model_list(1).A;
H(3,:) = transpose(model_list(1).l);
cc = model_list(1).cc;
q = model_list(1).q;
[rimg,trect] = render_rectification(img.data,H,cc,q,v, ...
                                    'MinScale', 0.1, ...
                                    'MaxScale', 1.5);
imwrite(rimg,['/home/jbpritts/Documents/accv18_rebuttal/img/' ...
         'rect_H4ql.jpg']);
[uimg,~,trect] = IMG.ru_div(img.data,cc,q);
imwrite(uimg,['/home/jbpritts/Documents/accv18_rebuttal/img/' ...
         'ud_H4ql.jpg']);

%figure;
%image([80 475], [200 875], cropped/bright);
load('output/cropped_dartboard_H222ql.mat'); 
%hold on;
%for k = 1:numel(stats_list.ransac(end).res.mss)
%    LAF.draw(gca, x(:,stats_list.ransac(end).res.mss{k}), ...
%             'Color','w', 'LineWidth',5);
%    LAF.draw(gca, x(:,stats_list.ransac(end).res.mss{k}), ...
%             'Color',colors{k},'LineWidth',3);
%end
%axis equal;
%axis tight;
%axis off;
%hold off;
%export_fig( ['/home/jbpritts/Documents/accv18_rebuttal/fig/' ...
%             'H222ql.png']);
%

ind = find(~isnan(model_list(1).Gs));
v = reshape(x(:,ind),3,[]);
H = model_list(1).A;
H(3,:) = transpose(model_list(1).l);
cc = model_list(1).cc;
q = model_list(1).q;
[rimg,trect] = render_rectification(img.data,H,cc,q,v, ...
                            'MinScale', 0.1, ...
                            'MaxScale', 1.5);
imwrite(rimg,['/home/jbpritts/Documents/accv18_rebuttal/img/' ...
         'rect_H222ql.jpg']);
[uimg,~,trect] = IMG.ru_div(img.data,cc,q);
imwrite(uimg,['/home/jbpritts/Documents/accv18_rebuttal/img/' ...
         'ud_H222ql.jpg']);


figure;
image([80 475], [200 875], cropped/bright);
load('output/cropped_dartboard_H32ql.mat');
hold on;
for k = 1:numel(stats_list.ransac(end).res.mss)
    LAF.draw(gca, x(:,stats_list.ransac(end).res.mss{k}), ...
             'Color','w', 'LineWidth',5);
    LAF.draw(gca, x(:,stats_list.ransac(end).res.mss{k}), ...
             'Color',colors{k},'LineWidth',3);
end
axis equal;
axis tight;
axis off;
hold off;

export_fig( ['/home/jbpritts/Documents/accv18_rebuttal/fig/' ...
             'H32ql.jpg']);

ind = find(~isnan(model_list(1).Gs));
v = reshape(x(:,ind),3,[]);
H = model_list(1).A;
H(3,:) = transpose(model_list(1).l);
cc = model_list(1).cc;
q = model_list(1).q;
[rimg,trect] = render_rectification(img.data,H,cc,q,v, ...
                                    'MinScale', 0.1, ...
                                    'MaxScale', 1.5);

imwrite(rimg,['/home/jbpritts/Documents/accv18_rebuttal/img/' ...
         'rect_H32ql.jpg']);
[uimg,~,trect] = IMG.ru_div(img.data,cc,q);
imwrite(uimg,['/home/jbpritts/Documents/accv18_rebuttal/img/' ...
         'ud_H32ql.jpg']);