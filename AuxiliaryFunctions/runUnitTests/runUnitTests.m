%% RUN UNIT TESTS
% The purpose of this script is to enable easy "one click" access to
% running all of the unit tests within the project. To enable continuous
% understanding of the development status of files within the project.

%% Functionality

projObj = currentProject;

results = runtests(projObj.RootFolder, 'IncludeSubFolders', true);
