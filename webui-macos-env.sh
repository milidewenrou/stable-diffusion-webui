#!/bin/bash
####################################################################
#                          macOS defaults                          #
# Please modify webui-user.sh to change these instead of this file #
####################################################################

# 避免 OpenMP SHM2 错误 (OMP Error #179: Can't open SHM2) — macOS 无 /dev/shm
export OMP_NUM_THREADS=1

export install_dir="$HOME"
export COMMANDLINE_ARGS="--skip-torch-cuda-test --upcast-sampling --no-half-vae --use-cpu interrogate --ckpt-dir /Users/bjsttlp426/sd/model"
export PYTORCH_ENABLE_MPS_FALLBACK=1

if [[ "$(sysctl -n machdep.cpu.brand_string)" =~ ^.*"Intel".*$ ]]; then
    export TORCH_COMMAND="pip install torch==2.1.2 torchvision==0.16.2"
else
    export TORCH_COMMAND="pip install torch==2.3.1 torchvision==0.18.1"
fi

####################################################################
