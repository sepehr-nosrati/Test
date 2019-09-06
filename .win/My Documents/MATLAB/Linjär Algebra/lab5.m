p4 = [1 0 0; 0 1 0];
figure(1), clf;
fill(p4(1,:),p4(2,:),'g'), hold on;
axis equal, axis([-2 2 -2 2]), axis manual;

off = [-1; -1] + p4;
fill(off(1,:), off(2,:), 'b');

a = pi;
rot = [cos(a) -sin(a);sin(a) cos(a)]*p4;
fill(rot(1,:), rot(2,:), 'r');

rot2 = diag([3/2,3/2])*([cos(a) -sin(a);sin(a) cos(a)]*off);
fill(rot2(1,:), rot2(2,:), 'y');

%% Uppg 2
c = [0 1 0 1 0 1 0 1; 0 0 1 1 0 0 1 1; 0 0 0 0 1 1 1 1];
S = [1 2 4 3; 1 2 6 5; 1 3 7 5; 3 4 8 7; 2 4 8 6; 5 6 8 7];

figure(1), clf, hold on;
for i=1:size(S,1)
    Si=S(i,:); fill3(c(1,Si),c(2,Si),c(3,Si),'g','facealpha',0.7)
end
axis equal, axis tight, axis off, view(20,10);