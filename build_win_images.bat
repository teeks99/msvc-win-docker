
for %%v in ( 14.2 ) do (
  pushd msvc-%%v
  docker build -t teeks99/msvc-win:%%v -m 2g .
  popd
)