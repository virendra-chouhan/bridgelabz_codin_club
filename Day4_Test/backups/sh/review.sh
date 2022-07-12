#Listing all files of the Directory.
for files in `ls`
do
#find the extensions of the files.
FileName=`echo $files | awk -F. '{ print $2 }'`
#create a folder in backups directory with same name as the extension's names of files.

mkdir -p ../backups/$FileName   #we can use full path
#move original files into same name's of extension's folder.
mv  $files ../backups/$FileName
done
