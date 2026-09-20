# Download zip files
# TIP gdown https://drive.google.com/uc?id=[ID]

mkdir -p /root/BHRL/FSVOD500

export UNZIP_DISABLE_ZIPBOMB_DETECTION=true

echo "Downloading fsvod_annotations.zip"
gdown https://drive.google.com/uc?id=1hy6T9fpx9MIkPWPtE8B0QYatFrA8WWMb # official FSVOD-500 annotations
echo "Unzipping fsvod_annotations"
unzip fsvod_annotations.zip
rm -f fsvod_annotations.zip
mv annotations /root/BHRL/FSVOD500

echo "Downloading LaSOT.zip"
gdown https://drive.google.com/uc?id=1NxMW_Ti3lKT17yCx4WPzc19F36EtatKB # LaSOT.zip
echo "Unzipping LaSOT"
unzip LaSOT.zip
rm -f LaSOT.zip
mv LaSOT /root/BHRL/FSVOD500

echo "Downloading TAO.zip"
gdown https://drive.google.com/uc?id=1sgE04TwATOKf45j5gSIBCl33oxlrs5hV # TAO.zip
echo "Unzipping TAO"
unzip TAO.zip
rm -f TAO.zip
mv TAO /root/BHRL/FSVOD500

echo "Downloading GOT-10k.zip"
gdown https://drive.google.com/uc?id=1zXuauPnnVE-NtlrEIXb2npTBlbCuFlsK # GOT-10k.zip
echo "Unzipping GOT-10k.zip"
unzip GOT-10k.zip
rm -f GOT-10k.zip
mv GOT-10k /root/BHRL/FSVOD500

ln -sfn /root/BHRL/FSVOD500 /root/BHRL/IMGS
echo "ALL DONE"