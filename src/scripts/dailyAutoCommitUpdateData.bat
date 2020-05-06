echo .
echo Changement env Python...
echo .
call activate DeepL
D:

echo .
echo MAJ Data Monde...
echo .
cd D:\DeeplyLearning\Github\COVID-19
git checkout .
git checkout master
git pull origin master


echo .
echo MAJ Data France...
echo .
cd D:\DeeplyLearning\Github\data
git checkout .
git checkout master
git pull origin master
call npm run build
D:

echo .
echo Conversion des nouvelles data...
echo .
cd D:\DeeplyLearning\Github\SITE_PERSO_GITPAGE\covid19
git checkout .
git checkout master
git pull origin master
cd src\scripts
call python convertRawData.py
D:
call python augmentGeojsonData.py
D:

echo .
echo Sauvegarde des nouvelles data sur Github...
echo .
cd D:\DeeplyLearning\Github\SITE_PERSO_GITPAGE\covid19\src\assets\commitDate
break > lastCommitDate.txt
echo %time:~0,2%:%time:~3,2%:%time:~6,2% - %date% > lastCommitDate.txt
git add -u
git commit -m "Daily commit update data - %date% - %time:~0,2%:%time:~3,2%:%time:~6,2%"
git push origin master

echo .
echo Deploiement nouvelles data sur Github Pages...
echo .
call npm run deploy
D:

pause