#!/bin/sh

cd hworld

cargo lipo --release
cbindgen src/lib.rs -l c > hworld.h

cp hworld.h ../ios/include
cp target/universal/release/libhworld.a ../ios/libs