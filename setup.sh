# Capture the start time
start_time=$(date +%s)

# scratch folder name
if [[ -n "$JUPYTERHUB_API_URL" ]]; then
    scratch_folder=scratch
else
    scratch_folder=$scratch_folder
fi

# cd to home directory
cd $HOME

# make repo directory
mkdir repos

# nice bashrc
cp -f /$scratch_folder/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup/setup_files/.bashrc $HOME/.bashrc

# clone repos
cd repos
git clone https://github.com/jonaden94/DaNuMa2024
git clone https://github.com/jonaden94/PigDetect

# symbolic link data
cd DaNuMa2024
mkdir data
ln -s /$scratch_folder/projects/scc_gwdg_danuma_ss2024/raw_data data
mkdir /$scratch_folder/users/$USER/output_data
ln -s /$scratch_folder/users/$USER/output_data data

# conda environment
unset PYTHONPATH
bash /$scratch_folder/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup/setup_files/install_miniforge.sh

# run new bash
source $HOME/.bashrc

# # environment setup
source setup/setup.sh
cd ../PigDetect
source /$scratch_folder/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup/setup_files/PigDetect_setup.sh

# install kernel for notebook
python -m ipykernel install --user --name danuma --display-name "python danuma"

# Capture the end time
end_time=$(date +%s)
elapsed_time=$((end_time - start_time))
hours=$((elapsed_time / 3600))
minutes=$(((elapsed_time % 3600) / 60))
seconds=$((elapsed_time % 60))
echo "Elapsed time: $hours hours, $minutes minutes, $seconds seconds"
echo "Setup finished"

# WARNING:
#     You currently have a PYTHONPATH environment variable set. This may cause
#     unexpected behavior when running the Python interpreter in Miniforge3.
#     For best results, please verify that your PYTHONPATH only points to
#     directories of packages that are compatible with the Python interpreter
#     in Miniforge3: /user/jonathan.henrich01/u12133/conda