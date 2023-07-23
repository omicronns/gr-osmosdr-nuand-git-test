#!/bin/bash

pushd libbladerf-git
makepkg -si
popd

pushd gr-osmosdr-nuand-git
makepkg -si
popd
