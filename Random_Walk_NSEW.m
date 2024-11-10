%% SECTION 1: Title
% Author: Evan Gibbs
% Project: Random Walk NSEW
% Dates Worked on: 11/7/2024-11/9/2024

%% SECTION 2: Initializing Our Random Walk

Starting_Pos = [0, 0];
Random_Walk = Starting_Pos; 

%% SECTION 3: Defining Our Random Walk

Number_of_Steps = 100000;
Vector_Directions = [0, 1; 0, -1; 1, 0; -1, 0]; 
Sample_Space_Probs = [0.25, 0.25, 0.25, 0.25];

Direction_Indices = randsample(1:4, Number_of_Steps, true, Sample_Space_Probs);

for i = 1:Number_of_Steps
    Random_Walk = [Random_Walk; Random_Walk(i,:) + Vector_Directions(Direction_Indices(i), :)];
end    

figure;
plot(Random_Walk(:,1), Random_Walk(:,2), 'LineWidth', 2); 
hold on;
xlabel('X');
ylabel('Y');
title('2D Random Walk (NSEW)');
grid on;
axis equal;
