# Set distutils to debug
$env:DISTUTILS_DEBUG = '1'

# Activate the virtual environment
.\venv\Scripts\activate

# Clean python build folders
python setup.py clean --all

# Build python modules/packages
python setup.py build -v

# Upgrade the required packages
pip install --upgrade -r requirements.txt

# Remove distutils debug
$env:DISTUTILS_DEBUG = ''
