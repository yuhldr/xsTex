#!/bin/bash
#SBATCH --partition=ptt3              # 分区名称
#SBATCH --mem=2G                      # 内存要求
#SBATCH --cpus-per-task=1             # 每个任务cpu核心数
#SBATCH --array=31,37-41,50-51,61,63  # 每个任务标识
#SBATCH -o cache/runs/kv_%A_%a.out    # 正常输出
#SBATCH -e cache/runs/kv_%A_%a.err    # 错误信息输出

kv=$((SLURM_ARRAY_TASK_ID))

source /etc/profile.d/modules.sh
module load gnu-openmpi/3.1.6

lmp -l lmp/logs/kv$kv.log.lmp -in lmp/ins/kv$kv.lmp
