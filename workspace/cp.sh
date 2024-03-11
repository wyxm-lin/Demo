# 执行 sh cp.sh
today=$(date +%Y-%m-%d)
path="/mnt/d/Dprogram/Code/CodeCraft/CodeCraft2024/ContestProblem/WindowsRelease/replayer/$today"
mkdir -p "$path"
cp ./replay/*.rep $path