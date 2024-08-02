# what was done before running this file:
# 1. create folder named "repos" in ~
# 2. git clone https://github.com/jonaden94/DaNuMa2024_setup 

# cd to home directory
cd $HOME

# nice bashrc
cp -f $HOME/repos/DaNuMa2024_setup/setup_files/.bashrc $HOME/.bashrc

# clone repos
cd repos
git clone https://github.com/jonaden94/DaNuMa2024
git clone https://github.com/jonaden94/PigDetect

# symbolic link data
cd DaNuMa2024
mkdir data
ln -s /scratch1/projects/scc_gwdg_danuma_ss2024/raw_data data
mkdir /scratch1/users/$USER/output_data
ln -s /scratch1/users/$USER/output_data data

# conda environment
bash $HOME/repos/DaNuMa2024_setup/setup_files/install_miniforge.sh

# run new bash
source $HOME/.bashrc

# # environment setup (not enough disc space yet for Pigdetect) ALSO MIM MIGHT LEAD TO PROBLEMS SIMILAR AS PIP WHICH MIGHT NOT BE EASILY FIXABLE FOR AUTOMATIC INSTALLATION
source setup/setup.sh
# cd ../PigDetect
# source $HOME/repos/DaNuMa2024_setup/setup_files/PigDetect_setup.sh

# install kernel for notebook
python -m ipykernel install --user --name danuma --display-name "python danuma"
