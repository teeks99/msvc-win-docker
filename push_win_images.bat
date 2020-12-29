set datestr=%DATE:~10,4%%DATE:~4,2%%DATE:~7,2%

for %%v in ( 14.1 14.2 ) do (
  docker push teeks99/msvc-win:%%v_%datestr%
  docker push teeks99/msvc-win:%%v
)

docker push teeks99/msvc-win:latest