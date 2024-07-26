@echo off
REM Create the root directory
mkdir demo_packaging
cd demo_packaging

REM Initialize a Git repository
git init

REM Create common files
echo # My Python Projects > README.md
echo. >> README.md
echo This repository contains various Python projects demonstrating my real-world experience and skills in Python programming. >> README.md
echo. >> README.md
echo ## Projects >> README.md
echo. >> README.md
echo 1. **Demo 1**: Description of demo project 1. >> README.md
echo 2. **Demo 2**: Description of demo project 2. >> README.md
echo. >> README.md
echo Each project has its own README with more details. >> README.md

echo *.pyc > .gitignore
echo __pycache__/ >> .gitignore
echo >> .gitignore
echo # Distribution / packaging >> .gitignore
echo .Python >> .gitignore
echo env/ >> .gitignore
echo build/ >> .gitignore
echo develop-eggs/ >> .gitignore
echo dist/ >> .gitignore
echo downloads/ >> .gitignore
echo eggs/ >> .gitignore
echo .eggs/ >> .gitignore
echo lib/ >> .gitignore
echo lib64/ >> .gitignore
echo parts/ >> .gitignore
echo sdist/ >> .gitignore
echo var/ >> .gitignore
echo wheels/ >> .gitignore
echo pip-wheel-metadata/ >> .gitignore
echo share/python-wheels/ >> .gitignore
echo *.egg-info/ >> .gitignore
echo .installed.cfg >> .gitignore
echo *.egg >> .gitignore
echo MANIFEST >> .gitignore
echo >> .gitignore
echo # PyInstaller >> .gitignore
echo *.manifest >> .gitignore
echo *.spec >> .gitignore
echo >> .gitignore
echo # Installer logs >> .gitignore
echo pip-log.txt >> .gitignore
echo pip-delete-this-directory.txt >> .gitignore
echo >> .gitignore
echo # Unit test / coverage reports >> .gitignore
echo htmlcov/ >> .gitignore
echo .tox/ >> .gitignore
echo .nox/ >> .gitignore
echo .coverage >> .gitignore
echo .coverage.* >> .gitignore
echo .cache >> .gitignore
echo nosetests.xml >> .gitignore
echo coverage.xml >> .gitignore
echo *.cover >> .gitignore
echo .hypothesis/ >> .gitignore
echo >> .gitignore
echo # Translations >> .gitignore
echo *.mo >> .gitignore
echo *.pot >> .gitignore
echo >> .gitignore
echo # Django stuff: >> .gitignore
echo *.log >> .gitignore
echo local_settings.py >> .gitignore
echo db.sqlite3 >> .gitignore
echo >> .gitignore
echo # Flask stuff: >> .gitignore
echo instance/ >> .gitignore
echo .webassets-cache >> .gitignore
echo >> .gitignore
echo # Scrapy stuff: >> .gitignore
echo .scrapy >> .gitignore
echo >> .gitignore
echo # Sphinx documentation >> .gitignore
echo docs/_build/ >> .gitignore
echo >> .gitignore
echo # Jupyter Notebook >> .gitignore
echo .ipynb_checkpoints >> .gitignore
echo >> .gitignore
echo # PyCharm >> .gitignore
echo .idea/ >> .gitignore
echo >> .gitignore
echo # VSCode >> .gitignore
echo .vscode/ >> .gitignore
echo >> .gitignore
echo # MyPy >> .gitignore
echo .mypy_cache/ >> .gitignore
echo >> .gitignore
echo # Environment variables >> .gitignore
echo .env >> .gitignore

REM Create common directory
mkdir common
echo # Common Utilities > common\README.md
type NUL > common\utilities.py
type NUL > common\logger.py

REM Create demo1 project
mkdir demo1
mkdir demo1\demo1
mkdir demo1\tests

echo from setuptools import setup, find_packages> demo1\setup.py
echo. >> demo1\setup.py
echo setup^( >> demo1\setup.py
echo     name='demo1', >> demo1\setup.py
echo     version='0.1.0', >> demo1\setup.py
echo     packages=find_packages^(^), >> demo1\setup.py
echo     install_requires=[], >> demo1\setup.py
echo     entry_points={}, >> demo1\setup.py
echo     python_requires='>=3.6', >> demo1\setup.py
echo ^) >> demo1\setup.py

echo # Demo 1 > demo1\README.md
echo. >> demo1\README.md
echo This is the first demo project. >> demo1\README.md

echo # List your project's dependencies here. > demo1\requirements.txt

type NUL > demo1\demo1\__init__.py
echo def hello():> demo1\demo1\module1.py
echo     return 'Hello from Demo 1!' >> demo1\demo1\module1.py

type NUL > demo1\tests\__init__.py
echo import unittest> demo1\tests\test_module1.py
echo from demo1.module1 import hello >> demo1\tests\test_module1.py
echo. >> demo1\tests\test_module1.py
echo class TestModule1(unittest.TestCase): >> demo1\tests\test_module1.py
echo. >> demo1\tests\test_module1.py
echo     def test_hello(self): >> demo1\tests\test_module1.py
echo         self.assertEqual(hello(), 'Hello from Demo 1!') >> demo1\tests\test_module1.py
echo. >> demo1\tests\test_module1.py
echo if __name__ == '__main__': >> demo1\tests\test_module1.py
echo     unittest.main() >> demo1\tests\test_module1.py

REM Create demo2 project
mkdir demo2
mkdir demo2\demo2
mkdir demo2\tests

echo from setuptools import setup, find_packages> demo2\setup.py
echo. >> demo2\setup.py
echo setup^( >> demo2\setup.py
echo     name='demo2', >> demo2\setup.py
echo     version='0.1.0', >> demo2\setup.py
echo     packages=find_packages^(^), >> demo2\setup.py
echo     install_requires=[], >> demo2\setup.py
echo     entry_points={}, >> demo2\setup.py
echo     python_requires='>=3.6', >> demo2\setup.py
echo ^) >> demo2\setup.py

echo # Demo 2 > demo2\README.md
echo. >> demo2\README.md
echo This is the second demo project. >> demo2\README.md

echo # List your project's dependencies here. > demo2\requirements.txt

type NUL > demo2\demo2\__init__.py
echo def hello():> demo2\demo2\module1.py
echo     return 'Hello from Demo 2!' >> demo2\demo2\module1.py

type NUL > demo2\tests\__init__.py
echo import unittest> demo2\tests\test_module1.py
echo from demo2.module1 import hello >> demo2\tests\test_module1.py
echo. >> demo2\tests\test_module1.py
echo class TestModule1(unittest.TestCase): >> demo2\tests\test_module1.py
echo. >> demo2\tests\test_module1.py
echo     def test_hello(self): >> demo2\tests\test_module1.py
echo         self.assertEqual(hello(), 'Hello from Demo 2!') >> demo2\tests\test_module1.py
echo. >> demo2\tests\test_module1.py
echo if __name__ == '__main__': >> demo2\tests\test_module1.py
echo     unittest.main() >> demo2\tests\test_module1.py

REM Add, commit, and push to remote repository
git add .
git commit -m "Initial commit with demo1 and demo2 projects"
REM Replace the following URL with your repository URL
git remote add origin https://github.com/yourusername/my_python_projects.git
git branch -M main
git push -u origin main

echo Repository setup complete.
