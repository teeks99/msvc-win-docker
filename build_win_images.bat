
set datestr=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%
echo %datestr% > lastBuildDate.txt

for %%v in ( 14.0 14.1 14.2 ) do (
  pushd msvc-%%v
  docker build -t teeks99/msvc-win:%%v_%datestr% -m 4g .
  docker tag teeks99/msvc-win:%%v_%datestr% teeks99/msvc-win:%%v
  popd
)

docker tag teeks99/msvc-win:14.2 teeks99/msvc-win:latest