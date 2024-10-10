# make files readable
chmod -R a+r /scratch1/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup
# permit navigation into folders (i.e. make folder executable)
find /scratch1/projects/scc_gwdg_danuma_ss2024/DaNuMa2024_setup -type d -exec chmod a+rx {} \;

# make files readable
chmod -R a+r /scratch1/projects/scc_gwdg_danuma_ss2024/raw_data
# permit navigation into folders (i.e. make folder executable)
find /scratch1/projects/scc_gwdg_danuma_ss2024/raw_data -type d -exec chmod a+rx {} \;

# make files readable
chmod -R a+r /scratch1/projects/scc_gwdg_danuma_ss2024/singularity_images
# permit navigation into folders (i.e. make folder executable)
find /scratch1/projects/scc_gwdg_danuma_ss2024/singularity_images -type d -exec chmod a+rx {} \;