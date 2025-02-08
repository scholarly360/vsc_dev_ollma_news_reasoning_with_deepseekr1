## This is the main file used to install dependencies for the project
## ollama will take some time to download the model, so we will wait for dew mins before moving on
curl -L https://ollama.com/download/ollama-linux-amd64.tgz -o ollama-linux-amd64.tgz
sudo tar -C /usr -xzf ollama-linux-amd64.tgz
nohup ollama serve > /dev/null 2>&1 & sleep 10 && ollama pull deepseek-r1:1.5b 
sudo apt install procps -y && pip install --no-cache-dir -r req.txt && pip install --upgrade pip