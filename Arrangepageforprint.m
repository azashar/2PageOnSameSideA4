clc; clear all; close all;
prompt = {'Type total number of pages'};
dlg_title = 'Please enter';
num_lines = 1;
def = {'50'};
answer = inputdlg(prompt,dlg_title,num_lines,def);
options.Resize='on';
options.WindowStyle='normal';
options.Interpreter='tex';
C=str2double(answer);
md=mod(C,2);
if(md==0)
    N=C;
else
    N=C+1;
end
o=2;
e=2;
odd(1,1)=1;
even(1,1)=2;
for i=3:1:N
    if((mod(i,2)~=0))
        odd(1,o)=i;
        o=o+1;
    else if(i<N)
        even(1,e)=i;
        e=e+1;
        end
    end
end

dlmwrite('even.txt',even,',');
dlmwrite('odd.txt',odd,',');
