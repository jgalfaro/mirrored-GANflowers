discriminatorDataset = load('-mat','discriminator-dataset.mat');%contains variable data
generatorData = load('-mat','generator-data.mat');%contains variable I

%discriminator
vars = fieldnames(discriminatorDataset);
for i = 1:length(vars)
    assignin('base', vars{i}, discriminatorDataset.(vars{i}));
end

%generator
gen = fieldnames(generatorData);
for i = 1:length(gen)
    assignin('base', gen{i}, generatorData.(gen{i}));
end


%discriminatorDataset
for i=1:length(data.input)
    %disp(i)
    %fname=[['discriminator-dataset/image' num2str(i,'%4d')] '.csv'];
    %disp(fname)
    %csvwrite(fname,data.input{i,1})
    imshow(data.input{i,1})
end

%generatorData
%csvwrite('generator-data/generator-data.csv',I)
imshow(I)