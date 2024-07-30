wget -O Miniforge3.sh "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
bash Miniforge3.sh -b -p "conda"
rm Miniforge3.sh

# to initially init
bash conda/etc/profile.d/conda.sh
bash conda/etc/profile.d/mamba.sh
conda init