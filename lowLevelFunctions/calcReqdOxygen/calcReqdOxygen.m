function [reqdOxygen_BAR] = calcReqdOxygen(desiredMix,fillPressure)
%CALCREQDOXYGEN Calculate the pure oxygen to be added
%   This function takes the desiredMix (0-1, where 1 represents 100%
%   oxygen) and the fillPressure and calculates the pressure of pure oxygen
%   required.
% INPUTS
%
% INPUT 1: desiredMix
%   * Description:
%   * Size:
%   * Units:
%
% INPUT 2: fillPressure
%   * Description:
%   * Size:
%   * Units:
%
% OUTPUTS
%
% OUTPUT 1: reqdOxygen_BAR
%   * Description:
%   * Size:
%   * Units:

%% Calculation

reqdOxygen_BAR = (desiredMix - 0.21) / 0.79 * fillPressure;
end

