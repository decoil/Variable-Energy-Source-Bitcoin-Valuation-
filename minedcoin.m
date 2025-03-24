
n = 1085;
k = .1;
ewind = 6.24;
esolar = 6.96;
egas = 12.72;
ecoal = 20.64;
enuc = 06.96;
P = 54042.12;

r = .0045;
xp = linspace(1, 1086, 1086);

wind = ncv(n, k, ewind, P, .01022324, r);
solar = ncv(n, k, esolar, P, .01020902, r);
gas = ncv(n, k, egas, P, .01009529, r);
coal = ncv(n, k, ecoal, P, .00993889, r);
nuc = ncv(n, k, enuc, P, 0.01020902, r);

plot(xp,wind,'LineWidth',2)
xlabel("Days Elapsed", 'FontSize', 20)
ylabel('Bitcoin', 'FontSize', 20)
hold on
plot(xp,solar,'LineWidth',1)
plot(xp,gas,'--', 'LineWidth',1)
plot(xp,coal, '--', 'LineWidth',1)
plot(xp,nuc, '--', 'LineWidth',1)
hold off

legend('Wind', 'Solar', 'Gas', 'Coal', 'Nuclear','FontSize', 20)
