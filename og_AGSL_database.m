%%% Create database
%%% optogenetics experiments hChR2 in ACX recording in OFC

%%% Male female 1/0, animalinfo.injloc='';FILE_NAME


%%% Eyesclose/ Earclose = Y/N -> yes or no

cd 'E:\SL_data_code\OPTO\AnalysisCodes';
ANo = 6; %% animal number

og_exp_ac_ofc{1}.animalinfo.dir='E:\SL_data_code\OPTO\working_folder\Animal_1';
og_exp_ac_ofc{1}.animalinfo.age=60;
og_exp_ac_ofc{1}.animalinfo.sex=0;
og_exp_ac_ofc{1}.animalinfo.injloc='';%%% most of it went to TEA
og_exp_ac_ofc{1}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
og_exp_ac_ofc{1}.animalinfo.injDate ='30-December-2022';
og_exp_ac_ofc{1}.animalinfo.injAge = 'P13';
og_exp_ac_ofc{1}.animalinfo.recloc = 'OFC';
og_exp_ac_ofc{1}.animalinfo.surDate = '01-March-2023';
og_exp_ac_ofc{1}.animalinfo.surStart = '10:40';
og_exp_ac_ofc{1}.animalinfo.recStart = '17:12';
og_exp_ac_ofc{1}.animalinfo.anesthesiaLev = '1.6';
og_exp_ac_ofc{1}.animalinfo.earClose = 'Y';
og_exp_ac_ofc{1}.animalinfo.eyesClose = 'Y';
%
% %%%
%
og_exp_ac_ofc{2}.animalinfo.dir='E:\SL_data_code\OPTO\working_folder\Animal_2';
og_exp_ac_ofc{2}.animalinfo.age=51;
og_exp_ac_ofc{2}.animalinfo.sex=0;
og_exp_ac_ofc{2}.animalinfo.injloc='';%%% most of it went to TEA
og_exp_ac_ofc{2}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
og_exp_ac_ofc{2}.animalinfo.injDate ='28-Jan-2023';
og_exp_ac_ofc{2}.animalinfo.recloc = 'OFC';
og_exp_ac_ofc{2}.animalinfo.surDate = '03-March-2023';
og_exp_ac_ofc{2}.animalinfo.injAge = 'P16';
og_exp_ac_ofc{2}.animalinfo.surStart = '14:40';
og_exp_ac_ofc{2}.animalinfo.recStart = '17:08';
og_exp_ac_ofc{2}.animalinfo.anesthesiaLev = '1.6';
og_exp_ac_ofc{2}.animalinfo.earClose = 'Y';
og_exp_ac_ofc{2}.animalinfo.eyesClose = 'Y';

%%% .......

og_exp_ac_ofc{3}.animalinfo.dir='E:\SL_data_code\OPTO\working_folder\Animal_3';
og_exp_ac_ofc{3}.animalinfo.age=38;
og_exp_ac_ofc{3}.animalinfo.sex=1;
og_exp_ac_ofc{3}.animalinfo.injloc='';%%% most of it went to TEA
og_exp_ac_ofc{3}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
og_exp_ac_ofc{3}.animalinfo.injDate ='25-Feb-23';
og_exp_ac_ofc{3}.animalinfo.recloc = 'OFC';
og_exp_ac_ofc{3}.animalinfo.surDate = '27-March-2023';
og_exp_ac_ofc{3}.animalinfo.injAge = 'P19';
og_exp_ac_ofc{3}.animalinfo.surStart = '10:45';
og_exp_ac_ofc{3}.animalinfo.recStart = '13:00';
og_exp_ac_ofc{3}.animalinfo.anesthesiaLev = '1 - 1.6';
og_exp_ac_ofc{3}.animalinfo.earClose = 'Y';
og_exp_ac_ofc{3}.animalinfo.eyesClose = 'Y';

og_exp_ac_ofc{4}.animalinfo.dir='E:\SL_data_code\OPTO\working_folder\Animal_4';
og_exp_ac_ofc{4}.animalinfo.age=63;
og_exp_ac_ofc{4}.animalinfo.sex=0;
og_exp_ac_ofc{4}.animalinfo.injloc='';%%% most of it went to TEA
og_exp_ac_ofc{4}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
og_exp_ac_ofc{4}.animalinfo.injDate ='25-Feb-2022';
og_exp_ac_ofc{4}.animalinfo.recloc = 'OFC';
og_exp_ac_ofc{4}.animalinfo.surDate = '11-April-2023';
og_exp_ac_ofc{4}.animalinfo.injAge = 'P19';
og_exp_ac_ofc{4}.animalinfo.surStart = '16:30'; 
og_exp_ac_ofc{4}.animalinfo.recStart = '18:10';
og_exp_ac_ofc{4}.animalinfo.anesthesiaLev = '1.5';
og_exp_ac_ofc{4}.animalinfo.earClose = 'Y';
og_exp_ac_ofc{4}.animalinfo.eyesClose = 'Y';

og_exp_ac_ofc{5}.animalinfo.dir='E:\SL_data_code\OPTO\working_folder\Animal_5';
og_exp_ac_ofc{5}.animalinfo.age=77;
og_exp_ac_ofc{5}.animalinfo.sex=1;
og_exp_ac_ofc{5}.animalinfo.injloc='';%%% most of it went to TEA
og_exp_ac_ofc{5}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
og_exp_ac_ofc{5}.animalinfo.injDate ='20-Feb-2023';
og_exp_ac_ofc{5}.animalinfo.recloc = 'OFC';
og_exp_ac_ofc{5}.animalinfo.injAge = 'P17';
og_exp_ac_ofc{5}.animalinfo.surDate = '25-April-2023';
og_exp_ac_ofc{5}.animalinfo.surStart = '9:00';
og_exp_ac_ofc{5}.animalinfo.recStart = '11:30';
og_exp_ac_ofc{5}.animalinfo.anesthesiaLev = '1.5';
og_exp_ac_ofc{5}.animalinfo.earClose = 'Y';
og_exp_ac_ofc{5}.animalinfo.eyesClose = 'Y';

og_exp_ac_ofc{6}.animalinfo.dir='E:\SL_data_code\OPTO\working_folder\Animal_6';
og_exp_ac_ofc{6}.animalinfo.age=78;
og_exp_ac_ofc{6}.animalinfo.sex=1;
og_exp_ac_ofc{6}.animalinfo.injloc='';%%% most of it went to TEA
og_exp_ac_ofc{6}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
og_exp_ac_ofc{6}.animalinfo.injDate ='20-Feb-2023';
og_exp_ac_ofc{6}.animalinfo.recloc = 'OFC';
og_exp_ac_ofc{6}.animalinfo.surDate = '26-April-2022';
og_exp_ac_ofc{6}.animalinfo.surStart = '8:00';
og_exp_ac_ofc{6}.animalinfo.recStart = '10:30';
og_exp_ac_ofc{6}.animalinfo.anesthesiaLev = '1.5';
og_exp_ac_ofc{6}.animalinfo.earClose = 'Y';
og_exp_ac_ofc{6}.animalinfo.eyesClose = 'Y';
% 
% og_exp_ac_ofc{7}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_7';
% og_exp_ac_ofc{7}.animalinfo.age=22;
% og_exp_ac_ofc{7}.animalinfo.sex=1;
% og_exp_ac_ofc{7}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{7}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{7}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{7}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{7}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{7}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{7}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{7}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{7}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{7}.animalinfo.eyesClose = 'Y';
% 
% og_exp_ac_ofc{8}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_8';
% og_exp_ac_ofc{8}.animalinfo.age=22;
% og_exp_ac_ofc{8}.animalinfo.sex=1;
% og_exp_ac_ofc{8}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{8}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{8}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{8}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{8}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{8}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{8}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{8}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{8}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{8}.animalinfo.eyesClose = 'Y';
% %
% og_exp_ac_ofc{9}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_9';
% og_exp_ac_ofc{9}.animalinfo.age=22;
% og_exp_ac_ofc{9}.animalinfo.sex=1;
% og_exp_ac_ofc{9}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{9}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{9}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{9}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{9}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{9}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{9}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{9}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{9}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{9}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{10}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_10';
% og_exp_ac_ofc{10}.animalinfo.age=22;
% og_exp_ac_ofc{10}.animalinfo.sex=1;
% og_exp_ac_ofc{10}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{10}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{10}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{10}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{10}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{10}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{10}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{10}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{10}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{10}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{11}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_11';
% og_exp_ac_ofc{11}.animalinfo.age=22;
% og_exp_ac_ofc{11}.animalinfo.sex=1;
% og_exp_ac_ofc{11}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{11}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{11}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{11}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{11}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{11}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{11}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{11}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{11}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{11}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{12}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{12}.animalinfo.age=22;
% og_exp_ac_ofc{12}.animalinfo.sex=1;
% og_exp_ac_ofc{12}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{12}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{12}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{12}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{12}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{12}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{12}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{12}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{12}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{12}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{13}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{13}.animalinfo.age=22;
% og_exp_ac_ofc{13}.animalinfo.sex=1;
% og_exp_ac_ofc{13}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{13}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{13}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{13}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{13}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{13}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{13}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{13}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{13}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{13}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{14}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{14}.animalinfo.age=22;
% og_exp_ac_ofc{14}.animalinfo.sex=1;
% og_exp_ac_ofc{14}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{14}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{14}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{14}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{14}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{14}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{14}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{14}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{14}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{14}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{15}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{15}.animalinfo.age=22;
% og_exp_ac_ofc{15}.animalinfo.sex=1;
% og_exp_ac_ofc{15}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{15}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{15}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{15}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{15}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{15}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{15}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{15}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{15}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{15}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{16}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{16}.animalinfo.age=22;
% og_exp_ac_ofc{16}.animalinfo.sex=1;
% og_exp_ac_ofc{16}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{16}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{16}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{16}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{16}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{16}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{16}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{16}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{16}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{16}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{17}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{17}.animalinfo.age=22;
% og_exp_ac_ofc{17}.animalinfo.sex=1;
% og_exp_ac_ofc{17}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{17}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{17}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{17}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{17}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{17}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{17}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{17}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{17}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{17}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{18}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{18}.animalinfo.age=22;
% og_exp_ac_ofc{18}.animalinfo.sex=1;
% og_exp_ac_ofc{18}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{18}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{18}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{18}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{18}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{18}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{18}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{18}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{18}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{18}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{19}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{19}.animalinfo.age=22;
% og_exp_ac_ofc{19}.animalinfo.sex=1;
% og_exp_ac_ofc{19}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{19}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{19}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{19}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{19}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{19}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{19}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{19}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{19}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{19}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{20}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{20}.animalinfo.age=22;
% og_exp_ac_ofc{20}.animalinfo.sex=1;
% og_exp_ac_ofc{20}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{20}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{20}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{20}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{20}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{20}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{20}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{20}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{20}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{20}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{21}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{21}.animalinfo.age=22;
% og_exp_ac_ofc{21}.animalinfo.sex=1;
% og_exp_ac_ofc{21}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{21}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{21}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{21}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{21}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{21}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{21}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{21}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{21}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{21}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{22}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{22}.animalinfo.age=22;
% og_exp_ac_ofc{22}.animalinfo.sex=1;
% og_exp_ac_ofc{22}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{22}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{22}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{22}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{22}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{22}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{22}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{22}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{22}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{22}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{23}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{23}.animalinfo.age=22;
% og_exp_ac_ofc{23}.animalinfo.sex=1;
% og_exp_ac_ofc{23}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{23}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{23}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{23}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{23}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{23}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{23}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{23}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{23}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{23}.animalinfo.eyesClose = 'Y';
%
%
% og_exp_ac_ofc{24}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{24}.animalinfo.age=22;
% og_exp_ac_ofc{24}.animalinfo.sex=1;
% og_exp_ac_ofc{24}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{24}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{24}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{24}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{24}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{24}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{24}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{24}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{24}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{24}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{25}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{25}.animalinfo.age=22;
% og_exp_ac_ofc{25}.animalinfo.sex=1;
% og_exp_ac_ofc{25}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{25}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{25}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{25}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{25}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{25}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{25}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{25}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{25}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{25}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{26}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{26}.animalinfo.age=22;
% og_exp_ac_ofc{26}.animalinfo.sex=1;
% og_exp_ac_ofc{26}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{26}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{26}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{26}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{26}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{26}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{26}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{26}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{26}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{26}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{27}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{27}.animalinfo.age=22;
% og_exp_ac_ofc{27}.animalinfo.sex=1;
% og_exp_ac_ofc{27}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{27}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{27}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{27}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{27}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{27}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{27}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{27}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{27}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{27}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{28}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{28}.animalinfo.age=22;
% og_exp_ac_ofc{28}.animalinfo.sex=1;
% og_exp_ac_ofc{28}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{28}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{28}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{28}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{28}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{28}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{28}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{28}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{28}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{28}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{29}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{29}.animalinfo.age=22;
% og_exp_ac_ofc{29}.animalinfo.sex=1;
% og_exp_ac_ofc{29}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{29}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{29}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{29}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{29}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{29}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{29}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{29}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{29}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{29}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{30}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{30}.animalinfo.age=22;
% og_exp_ac_ofc{30}.animalinfo.sex=1;
% og_exp_ac_ofc{30}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{30}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{30}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{30}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{30}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{30}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{30}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{30}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{30}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{30}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{31}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{31}.animalinfo.age=22;
% og_exp_ac_ofc{31}.animalinfo.sex=1;
% og_exp_ac_ofc{31}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{31}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{31}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{31}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{31}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{31}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{31}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{31}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{31}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{31}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{32}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{32}.animalinfo.age=22;
% og_exp_ac_ofc{32}.animalinfo.sex=1;
% og_exp_ac_ofc{32}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{32}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{32}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{32}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{32}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{32}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{32}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{32}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{32}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{32}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{33}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{33}.animalinfo.age=22;
% og_exp_ac_ofc{33}.animalinfo.sex=1;
% og_exp_ac_ofc{33}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{33}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{33}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{33}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{33}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{33}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{33}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{33}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{33}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{33}.animalinfo.eyesClose = 'Y';
%
% og_exp_ac_ofc{34}.animalinfo.dir='O:\Optogenetics_AGSL\Animal_4';
% og_exp_ac_ofc{34}.animalinfo.age=22;
% og_exp_ac_ofc{34}.animalinfo.sex=1;
% og_exp_ac_ofc{34}.animalinfo.injloc='';%%% most of it went to TEA
% og_exp_ac_ofc{34}.animalinfo.inj = 'pAAV-CaMKIIa-hChR2(E123T/T159C)-EYFP(35511)';
% og_exp_ac_ofc{34}.animalinfo.injDate ='19-aUG-2022';
% og_exp_ac_ofc{34}.animalinfo.recloc = 'OFC';
% og_exp_ac_ofc{34}.animalinfo.surDate = '31-Aug-2022';
% og_exp_ac_ofc{34}.animalinfo.surStart = '8:00';
% og_exp_ac_ofc{34}.animalinfo.recStart = '10:30';
% og_exp_ac_ofc{34}.animalinfo.anesthesiaLev = '1.5';
% og_exp_ac_ofc{34}.animalinfo.earClose = 'Y';
% og_exp_ac_ofc{34}.animalinfo.eyesClose = 'Y';

%%% og_exp_ac_ofc{2}. ...... etc go on for 3, 4 etc

%%% Include files
N=length(og_exp_ac_ofc); %%% number of animals in database
currdir = pwd;
for ii=1:1:N
    %%% for each animal go through the directory and collect the file name
    %%% go to animal directory og_exp_ac_ofc{ii}.animalinfo.dir
    ii
    
    dirname = ['E:\SL_data_code\OPTO\working_folder\Animal_',num2str(ii)]
    
    cd (dirname);
    
    xx=dir('EPhys*.mat');
    nfiles(ii)=length(xx);
    og_exp_ac_ofc{ii}.fnum = nfiles(ii);
    
    for kk=1:nfiles(ii)
        Name = xx(kk).name;
        fdata = load(Name);
        
        fieldexist = isfield(fdata.PP_PARAMS.protocol,'stim_dur');
        
        if fieldexist ~=0 && fdata.PP_PARAMS.protocol.n_stims == 5
            og_exp_ac_ofc{ii}.stimtype{kk} = 'Opto';
        else
            if fieldexist ==0
                og_exp_ac_ofc{ii}.stimtype{kk} = 'Audio';
            end
        end
        
        og_exp_ac_ofc{ii}.Optofname{kk} = Name;
        og_exp_ac_ofc{ii}.OptoPP_PARAMS{kk} = fdata.PP_PARAMS;
        
        ephysdata = fdata.ephysdata;
        fieldn=fieldnames(ephysdata);
        og_exp_ac_ofc{ii}.Optoniter{kk} = length(fieldn)-1; % trial number + fsi value
        
        for jj = 1:1:length(fieldn)-1
            iter = fieldn{jj};
            data = getfield(ephysdata,iter);
            
            if length(data) > 30000
                dsamp = 40;
            else
                dsamp = 20;
            end
            
            dSamData= downsample(data,dsamp);%downsampling
            nsample = length(dSamData);
            nsamStart = 201;
            og_exp_ac_ofc{ii}.Optorawdata{kk}{jj} = dSamData(nsamStart:nsample,17:32);
            
            %%% attach each filename
            %%% attach each file to database for LFP by downsampling to 1 or 2
            %%% kHz from Fsi
            %%%%%%%%%%%%%%%%%%%%%%%%%% SIMILAR PROCEDURE FOR SPIKE DATA AFTER
            %%%%%%%%%%%%%%%%%%%%%%%%%% SPIKE SORTING IS DONE - ATTACH SPIKE
            %%%%%%%%%%%%%%%%%%%%%%%%%% TIMES TO THE DATABASE
            %%% ATTACH THE PP_PARAMS OF EACH FILE
        end
        %else
        
    end
    
    
end



cd 'E:\SL_data_code\OPTO\working_folder';
save ('og_exp_ac_ofc.mat','og_exp_ac_ofc');

% -------------------------------------------------------------------

% Preprocessing

% y = x.og_exp_ac_ofc{1}.rawdata{1}{1};