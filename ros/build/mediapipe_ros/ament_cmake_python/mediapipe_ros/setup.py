from setuptools import find_packages
from setuptools import setup

setup(
    name='mediapipe_ros',
    version='0.1.0',
    packages=find_packages(
        include=('mediapipe_ros', 'mediapipe_ros.*')),
)
