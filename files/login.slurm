
#!/bin/bash
# IMPORTANT PARAMS
#SBATCH -p gpu

# OTHER PARAMS
#SBATCH -J llm-test
#SBATCH -o llm-test-%j.out
#SBATCH -e llm-test-%j.err

# COMMANDS ON THE COMPUTE NODE
pwd
date

# EXEC
srun --container-name=arch  --container-workdir=${PWD} python falcon.py

date