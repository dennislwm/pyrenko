from os import path
from setuptools import setup

# read the contents of your README file
strCwd = path.abspath(path.dirname(__file__))
with open(path.join(strCwd, 'README.md'), encoding='utf-8') as f:
  strDesc = f.read()

# setup details
setup(name='pyrenko',
  version='0.1',
  description='Renko calculation and chart',
  packages=['pyrenko'],
  install_requires=['numpy==1.18.5','matplotlib==3.2.2','scipy==1.5.0','ta-lib==0.4.18'],
  author='Dennis Lee',
  author_email='dennislwm@gmail.com',
  URL="https://github.com/dennislwm/pyrenko", 
  long_description=strDesc,
  long_description_content_type='text/markdown',
  license="MIT", 
  zip_safe=False
)
