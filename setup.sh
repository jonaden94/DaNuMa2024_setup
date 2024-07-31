# what was done before running this file:
# 1. create folder named "repos" in ~
# 2. git clone https://github.com/jonaden94/setup_summer_school 
# 3. cd repos/setup_summer_school

# nice bashrc
cp -f files/.bashrc .bashrc

# clone repos
git clone https://github.com/jonaden94/DaNuMa2024
git clone https://github.com/jonaden94/PigDetect

# symbolic link data
ln -s /scratch1/projects/scc_gwdg_danuma_ss2024/data 

# conda environment
bash /user/henrich1/u12112/repos/setup_summer_school/files/install_miniforge.sh

# run new bash
exec bash -l

# environment setup
cd ..
git clone https://github.com/jonaden94/exercises_summer_school
cd exercises_summer_school
source setup/setup.sh
cd ..

# install kernel for notebook
python -m ipykernel install --user --name exenv --display-name "exenv"
