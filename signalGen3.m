%this is our main function it has 4 inputs(signal,z,n,sampfreq) and 2
%outputs(y,t)
%where signal is matrix of the chosen signals
%z is the values matrix which includes(start time , breakvalues , end time)
%n is number of break point i.e. first break point not break point of
%value=3
%sampfreq is sampling frequency which the user input in the first of
%program
%y is the chosen signal values and t is the corresponding time
function [y,t] = signalGen3(signal,z,n,sampfreq)
    switch signal(n)
                case 1%poly
                    r=input('enter power value');
                    a=input('enter amplitudes as matrix');
                    c=input('enter intercept');
                    t = linspace(z(n),z(n+1),(z(n+1)-z(n)).*sampfreq);
                    y=a*(t.^r)+c;    
                case 2 % dc 
                    ampd=input('enter amplitude');
                    y = ampd.*ones(1,(z(n+1)-z(n)).*sampfreq);
                    t = linspace(z(n),z(n+1),(z(n+1)-z(n)).*sampfreq);
                case 3 %ramp
                    slope=input('enter slope');
                    intercept=input('enter intercept');
                    t = linspace(z(n),z(n+1),(z(n+1)-z(n)).*sampfreq);
                    y = slope.*t-intercept;
                case 4 %exponential
                    ampe=input('enter amplitude');
                    exponent= input('enter exponent');
                    t = linspace(z(n),z(n+1),(z(n+1)-z(n)).*sampfreq);
                    y = ampe.*exp(exponent.*t);
                case 5 %sinusoidal
                    amps = input('enter amplitude');
                    freq = input('enter frequency');
                    phase = input('enter phase shift');
                    t = linspace(z(n),z(n+1),(z(n+1)-z(n)).*sampfreq);
                    y = amps.*sin(2.*pi.*freq.*t+phase);

    end
end
