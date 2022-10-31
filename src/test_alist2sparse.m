clear 
close all
clc

addpath('/home/tom/Documents/ENSEIRB/T3/TS345/lib/matlab-tanner-graphs')
[H] = alist2sparse('alist/DEBUG_6_3.alist');
[h, g] = ldpc_h2g(H);
tg = tanner_graph(H);
plot(tg)