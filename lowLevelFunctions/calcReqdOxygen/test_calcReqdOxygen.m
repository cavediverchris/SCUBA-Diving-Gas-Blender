classdef test_calcReqdOxygen < matlab.unittest.TestCase
    
    methods (Test)
        
        function testRealisticCalculation(testCase)
            requestedMix = 0.34;
            requestedFillPressure = 205;
            
            actSolution = calcReqdOxygen(requestedMix, requestedFillPressure);
            expSolution = 33.7;
            
            testCase.verifyEqual(actSolution, expSolution);
        end
        
        function testDesiredO2lessThanAir(testCase)
            requestedMix = 0.14;
            requestedFillPressure = 205;
            
            actSolution = calcReqdOxygen(requestedMix, requestedFillPressure);
            % TODO - Insert expected solution
            expSolution = [];
            
            testCase.verifyEqual(actSolution, expSolution);
        end
        
        function testLessThanZeroPressure(testCase)
            requestedMix = 0.34;
            requestedFillPressure = -5;
            
            actSolution = calcReqdOxygen(requestedMix, requestedFillPressure);
            % TODO - Insert expected solution
            expSolution = [];
            
            testCase.verifyEqual(actSolution, expSolution);
        end
    end
    
end