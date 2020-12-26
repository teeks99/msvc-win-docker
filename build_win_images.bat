
for %%v in ( msvc-14.2 ) do (
  pushd %%v
  docker build -t teeks99/msvc-win:%%v .
  popd
)