
for %%ver in ( msvc-14.2 ) do (
  pushd %%ver
  docker build -t teeks99/msvc-win:%%ver .
  popd
)