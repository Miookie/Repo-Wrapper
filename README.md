# Repo-Wrapper

A bash script that automatically wraps up your selected repositories as submodules and generates a README acting as their summary.
An example of the execution of this tool is presented in the section [Sample Run](#sample-run).

## Installation

Make sure you are running Ubuntu on your machine and you have ```Python``` and ```pip``` installed. 

### Setting Up a Virtual Envinronment
Setting up a [virtual environment (venv)](https://docs.python.org/3/library/venv.html#:~:text=A%20virtual%20environment%20is%20a,part%20of%20your%20operating%20system.) is optional. However, it is [recommended](https://stackoverflow.com/a/41972262/3250120). 

1. Installing ```virtualenv``` usng ```pip```: 
    ```
    $ pip install --user virtualenv
    ```

2. Creating a new ```venv``` named ```.venv```
    ```
    $ python -m venv .venv
    ```

The 2 steps above need to be done only once (at the very beginning). 

3. Activating the venv whenever you plan to use this tool:
    ```
    $ source .venv/bin/activate
    ```

### Installing Required Packages
    $ pip install -r requirements.txt

### Installing Firefox Webdriver
1. Download the appropriate webdriver for your system from: [https://github.com/mozilla/geckodriver/releases/tag/v0.31.0](https://github.com/mozilla/geckodriver/releases/tag/v0.31.0)

2. Extract the downloaded ```tar.gz``` file:
    ```
    $ tar -xzvf geckodriver-v0.31.0-linux64.tar.gz
    ```

3. Move the extracted file (```geckodriver```) to ```/usr/local/bin```
    ```
    $ mv geckodriver /usr/local/bin/
    ```
    
## How to Run
ToDo

## Sample Run
ToDo

## ToDo:
* Delete previously-related files in `.git/` using `grep`.  
* New argument option to input repositories from the command line. 
* Support private repositories. 
* Support chrome 
* Support mac