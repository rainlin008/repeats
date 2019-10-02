function [solver_names,solver_list,colormap] = make_solver_list()

soa_solver_names = { ...
    '$\mH22\lambda$', ...
    '$\mH22\lambda_1\lambda_2$', ...
    '$\mH22\vl$', ...
    '$\mH222\vl\lambda$' };

proposed_solver_names = {
    '$\mH^{\text{cpp}}2\vl\lambda$', ...
    '$\mH^{\text{matlab}}2\vl\lambda$', ...
    '$\mH2\vl\vu \lambda$', ...
    '$\mH2\vl\vu s_{\vu}\lambda$', ...
    '$\mH22\vl\vu\vv \lambda$', ...
    '$\mH22\vl\vu\vv s_{\vv}\lambda$' }; 


solver_names = [ soa_solver_names proposed_solver_names ];

soa_solver_list = [ ...
    WRAP.laf22_to_qH(), ...  
    WRAP.laf22_to_q1q2H(), ...
    WRAP.laf22_to_l('solver_type','polynomial'), ... 
    WRAP.laf222_to_ql() ];

proposed_solver_list = [ ...
    WRAP.laf2_to_ql('solver','cpp') ...
    WRAP.laf2_to_ql('solver','matlab') ...
    WRAP.laf2_to_qlu() ...
    WRAP.laf2_to_qlsu() ...
    WRAP.laf22_to_qluv() ...
    WRAP.laf22_to_qlusv() ...
                   ];

solver_list = [soa_solver_list proposed_solver_list]';

soa_color_list = [0 166 140; ...
                  255 140 0; ...
                  240 240 0; ...
                  255 0 255]/255;

proposed_color_list = [0 0 0; ...
                    0 0 0; ...
                    0 0 1; ...
                    0 1 0; ...
                    1 0 0; ...
                    0 1 1];                    

color_list = [soa_color_list; ...
              proposed_color_list];

tst = mat2cell(color_list,ones(size(color_list,1),1),3);
colormap = containers.Map(solver_names',tst);

solver_list = solver_list(5:6);
solver_names = solver_names(5:6);