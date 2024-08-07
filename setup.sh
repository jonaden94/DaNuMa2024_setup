# cd to home directory
cd $HOME

# make repo directory
mkdir repos

# nice bashrc
cp -f /scratch1/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup/setup_files/.bashrc $HOME/.bashrc

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
bash /scratch1/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup/setup_files/install_miniforge.sh

# run new bash
source $HOME/.bashrc

# # environment setup
source setup/setup.sh
cd ../PigDetect
source /scratch1/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup/setup_files/PigDetect_setup.sh

# install kernel for notebook
python -m ipykernel install --user --name danuma --display-name "python danuma"
