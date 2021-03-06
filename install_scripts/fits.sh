#!/bin/sh

# FITS
SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

if [ ! -d fits-$FITS_VERSION ]; then
  DOWNLOAD_URL="https://brussels.lib.utah.edu/FITS/fits-${FITS_VERSION}.zip"
  cd $DOWNLOAD_DIR
  if [ ! -f "fits.zip" ]; then
    wget -O fits.zip $DOWNLOAD_URL
  fi
  unzip fits.zip -d fits-$FITS_VERSION
  chmod a+x fits-$FITS_VERSION/*.sh
  FITS_PATH="${DOWNLOAD_DIR}/fits-${FITS_VERSION}"
  cd
  echo "PATH=\${PATH}:$FITS_PATH" >> .bashrc
fi

sudo ln -s /vagrant/downloads/fits-$FITS_VERSION/fits.sh /usr/bin/fits.sh


#https://brussels.lib.utah.edu/FITS/fits-1.4.1.zip
#wget -O fits.zip https://brussels.lib.utah.edu/FITS/fits-1.4.1.zip
#unzip fits.zip -d fits-1.4.1
#chmod a+x fits-1.4.1/*.sh
#sudo ln -s /vagrant/downloads/fits-1.4.1/fits.sh /usr/bin/fits.sh
