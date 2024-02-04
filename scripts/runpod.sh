#!/bin/bash

# Additional things required
pip install jupyter-archive
wget -O /workspace/stable-diffusion-webui/models/ESRGAN/4xUltra.pth https://civitai.com/api/download/models/125843
git clone https://github.com/ArtVentureX/sd-webui-agent-scheduler.git /workspace/stable-diffusion-webui/extensions/sd-webui-agent-scheduler
git clone https://github.com/Bing-su/adetailer.git /workspace/stable-diffusion-webui/extensions/adetailer
git clone https://github.com/DominikDoom/a1111-sd-webui-tagcomplete.git /workspace/stable-diffusion-webui/extensions/
wget -O /workspace/stable-diffusion-webui/models/VAE/vae.safetensors https://civitai.com/api/download/models/196039?type=VAE
python3 /workspace/stable-diffusion-webui/extensions/adetailer/install.py


model_dir="/workspace/stable-diffusion-webui/models/Stable-diffusion/"
lora_dir="/workspace/stable-diffusion-webui/models/Lora/"

declare -A files=(
# Models download
  # ["https://civitai.com/api/download/models/164826"]="$model_dir/unstable-electric.safetensors"
  # ["https://civitai.com/api/download/models/174609"]="$model_dir/unstable-heaven.safetensors"
  ["https://civitai.com/api/download/models/276923"]="$model_dir/unstable-diffusion.safetensors"
  ["https://civitai.com/api/download/models/254091"]="$model_dir/realcartoonxl.safetensors"
  ["https://civitai.com/api/download/models/251889"]="$model_dir/hassaku-hentai.safetensors"
  ["https://civitai.com/api/download/models/198246"]="$model_dir/copax-design.safetensors"
  ["https://civitai.com/api/download/models/173768"]="$model_dir/cherry-picker.safetensors"
  ["https://civitai.com/api/download/models/233197"]="$model_dir/yamer-3d.safetensors"
  ["https://civitai.com/api/download/models/292713"]="$model_dir/xi.safetensors"
  # ["https://civitai.com/api/download/models/182077"]="$model_dir/starlight.safetensors"
  # ["https://civitai.com/api/download/models/209647"]="$model_dir/unstable.safetensors"
  # ["https://civitai.com/api/download/models/209647"]="$model_dir/unstable.safetensors"

  # Lora download
  ["https://civitai.com/api/download/models/152309"]="$lora_dir/xl.safetensors"
  ["https://civitai.com/api/download/models/193938"]="$lora_dir/chromeTech.safetensors"
  ["https://civitai.com/api/download/models/210417"]="$lora_dir/radiantRose.safetensors"
  ["https://civitai.com/api/download/models/209105"]="$lora_dir/cinematicFantasy.safetensors"
  ["https://civitai.com/api/download/models/208139"]="$lora_dir/painMagic.safetensors"
  ["https://civitai.com/api/download/models/189385"]="$lora_dir/wizardCore.safetensors"
  ["https://civitai.com/api/download/models/181609"]="$lora_dir/aetherPunk.safetensors"
  ["https://civitai.com/api/download/models/175280"]="$lora_dir/cyberPunk.safetensors"
  ["https://civitai.com/api/download/models/170737"]="$lora_dir/blacHoleTech.safetensors"
  ["https://civitai.com/api/download/models/170737"]="$lora_dir/blacHoleTech.safetensors"

)

# looping all models/lora files for parallel download

for url in "${!files[@]}"; do
  wget -O "${files[$url]}" "$url" &
done

wait
echo "all files downloaded successfully and ready to go!!!"
