%% SECTION 1: Title
% Author: Evan Gibbs
% Project: Scraping Masked Images
% Dates Worked on: 9/11/2024

%% SECTION 2: Reading File Names

Directory = 'C:\Users\evang\NITMB Research\mask_images'; % Assign our directory for which the tif files are in.
Tif_Files = dir(fullfile(Directory, '*.tif')); % Locate only the tif files.
Files_Names = {Tif_Files.name}'; % Select the column of all the file names which we will scrape for each characteristic.

%% SECTION 3: Reading Strain Types

Number_Tif = length(Tif_Files);
Strain_Types = {'25192','25193','25194' ,'25195','25197', '25198','25201','25203', '25206','25207','25208','25445', '3840', '3860', '3867', '4264' ,'4267', '_45','outbred'}';
Number_of_Strains = length(Strain_Types);
Fly_Strains = cell(Number_Tif,1);  % Initialize a cell table where we will put the strain of each flywing data point.

for j=1:Number_Tif
for k=1:Number_of_Strains
    if contains (Files_Names{j}, Strain_Types{k}) % Assigns strain.
        Fly_Strains{j}= Strain_Types{k};
    end
end
end