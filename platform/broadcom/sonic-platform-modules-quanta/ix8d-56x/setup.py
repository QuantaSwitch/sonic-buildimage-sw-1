#!/usr/bin/env python

import os
from setuptools import setup
os.listdir

setup(
   name='ix8d_56x',
   version='1.0',
   description='Module to initialize Quanta IX8D-56X platforms',
   
   packages=['ix8d_56x'],
   package_dir={'ix8d_56x': 'ix8d-56x/classes'},
)

