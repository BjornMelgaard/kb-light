from setuptools import setup
import os

setup(
    name="kb-light",
    version="0.0.1",
    packages=[
        'main',
    ],
    entry_points={
        "console_scripts": [
            "kb-light=main.__main__:main"
        ]
    },
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Programming Language :: Python :: 3',
    ],
    description='Configure keyboard light',
)

