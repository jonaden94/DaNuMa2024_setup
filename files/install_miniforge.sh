wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3.sh -b -p "/scratch1/users/$USER/conda"
rm Miniforge3.sh

# to initially init
bash /scratch1/users/$USER/conda/etc/profile.d/conda.sh
bash /scratch1/users/$USER/conda/etc/profile.d/mamba.sh
/scratch1/users/$USER/conda/bin/conda init
