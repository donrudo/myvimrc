DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VIM_HOME="$HOME/.vim"
VIM_RC="$HOME/.vimrc"

echo Verifying VIM configuration directory and file are available:
if [[ -e ${VIM_HOME} ]]; then
  if [ ${VIM_HOME} != ${DIR} ]; then
    echo destination path: ${VIM_HOME} is already taken
    exit 1
  fi
fi

if [[ -e ${VIM_RC} ]]; then
  echo destination path: ${VIM_RC} is already taken
  exit 1
fi

echo "Verifying subdependencies (cmake and python are needed)"
if [[ ! -x `which cmake` ]]; then
  echo Command cmake not found or not executable.
  exit 1
fi 

if [[ ! -x `which python` ]]; then
  echo Command python not found or not executable.
  exit 1
fi 

echo ... Everything seems to be good.
echo Creating symlinks.

if [ ${VIM_HOME} == ${DIR} ]; then
  echo source repository is at ${VIM_HOME}. not symlink is going to be set
else
  ln -s ${DIR} ${VIM_HOME}
fi

ln -s ${DIR}/.vimrc $VIM_RC

echo cloning submodules.
echo ... if there are some errors you may have to look at the bundle folders for further dependencies.
cd ${DIR}
git submodule update --init --recursive
ln -s ${DIR}/bundle/vim-pathogen/autoload ${DIR}/autoload

echo Compiling YouCompleteMe submodule
echo ... this may take a while. Using --go-completer for Go support
cd ${DIR}/bundle/YouCompleteMe
./install.py --go-completer


echo All set, you should be good to go now!
