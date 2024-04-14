x_kotak = [-1, 2, 2, -1, -1];
y_kotak = [-1, -1, 2, 2, -1];
z_kotak = zeros(size(x_kotak));

hold on;
plot3(x_kotak, y_kotak, z_kotak, 'k', 'LineWidth', 2);

x_tulang = [0, 2, 2, 0];
y_tulang = [1, 1, 2, 2];
z_tulang = zeros(size(x_tulang));
patch(x_tulang, y_tulang, z_tulang, 'r', 'FaceAlpha', 0.5);
text(mean(x_tulang), mean(y_tulang), 0, 'Tulang', 'HorizontalAlignment', 'center', 'FontSize', 20);

x_lemak = [1, 2, 2, 1];
y_lemak = [-1, -1, 1, 1];
z_lemak = zeros(size(x_lemak));
patch(x_lemak, y_lemak, z_lemak, 'g', 'FaceAlpha', 0.5);
text(mean(x_lemak), mean(y_lemak), 0, 'Lemak', 'HorizontalAlignment', 'center', 'FontSize', 20);

x_otot = [0, 1, 1, 0];
y_otot = [-1, -1, 1, 1];
z_otot = zeros(size(x_otot));
patch(x_otot, y_otot, z_otot, 'b', 'FaceAlpha', 0.5);
text(mean(x_otot), mean(y_otot), 0, 'Otot', 'HorizontalAlignment', 'center', 'FontSize', 20);

ax = [1, 0, 0];
ay = [0, 1, 0];
az = [0, 0, 1];

Ex = 3;
Ey = 4;
Ez = 1;

[x, y, z] = meshgrid(-2:0.5:2, -2:0.5:2, -2:0.5:2);

Ex_grid = Ex * ones(size(x));
Ey_grid = Ey * ones(size(y));
Ez_grid = Ez * ones(size(z));

quiver3(x, y, z, Ex_grid, Ey_grid, Ez_grid, 'b');
hold off;

xlabel('X');
ylabel('Y');
zlabel('Z');
title('Medan Listrik E = 3ax + 4ay + az');
axis tight;
grid on;