@echo off
echo Creating virtual environment...
python -m venv venv

echo Activating virtual environment...
call venv\Scripts\activate.bat

echo Upgrading pip...
python -m pip install --upgrade pip

echo Installing ipykernel...
pip install ipykernel

IF EXIST requirements.txt (
    echo Installing requirements...
    pip install -r requirements.txt
) ELSE (
    echo No requirements.txt found. You can now install packages manually.
)

echo Registering kernel for Jupyter...
python -m ipykernel install --user --name=venv --display-name "Python (venv)"

echo Done. In VS Code, select the kernel 'Python (venv)' in the top right.
pause
