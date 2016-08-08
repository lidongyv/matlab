clc;
clear;
rootpath='G:/picture/data1/trainbody/';
newpath='G:/picture/data1/bodypictures/';
files=dir(fullfile(rootpath));
lens=length(files);
count=1;
for i=3:lens
    file=dir([rootpath,files(i).name]);
    len=length(file);
    for j=3:len
       oldname=file(j).name;
       newname=count;
       img=imread([rootpath,files(i).name,'/',oldname]);
        % '!'的意思是调用系统函数
       %eval(['!rename',oldname,newname]);
       newfile=[newpath,num2str(count),'.png'];
       imwrite(img,newfile)
       count=count+1;
       disp(count);
    end
end