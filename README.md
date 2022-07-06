# Repo-Wrapper

Repo-Wrapper automatically creates a repository (**Mapper**) that is meant to work as a map to other repositories. It does so by creating submodules for each of the given repositories and generating a README from the description lines of those repositories.     
An example of the execution of this tool is presented in the section [Sample Run](#sample-run).

## Installation

Make sure you are running Ubuntu on your machine and you have ```python``` and ```pip``` installed. 

### Setting Up a Virtual Environment

Setting up a [virtual environment (venv)](https://docs.python.org/3/library/venv.html#:~:text=A%20virtual%20environment%20is%20a,part%20of%20your%20operating%20system.) is optional. However, it is [recommended](https://stackoverflow.com/a/41972262/3250120). 

1. Installing ```virtualenv``` usng ```pip```: 
    ```
    $ pip install --user virtualenv
    ```

2. Creating a new ```venv``` named ```.venv```:
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

3. Move the extracted file (```geckodriver```) to ```/usr/local/bin```:
    ```
    $ mv geckodriver /usr/local/bin/
    ```
    
## How to Run

1. Navigate to the local Mapper repository.
2. Copy ```wrap_repo.sh``` to the current directory.
3. Run the following command:
    ```
    $ bash wrap_repo.sh <options> <argumants>
    ```

### Options

- If the script is run with no options, it will open a nano window where you can provide the links to your repositories.
- ```-f <file_path>```: With this option, the script will read the links to your repositories from the given file.

## ToDo:

* Delete previously-related files in `.git/` using `grep`.  
* New argument option to input repositories from the command line. 
* Support private repositories. 
* Support chrome 
* Support mac
* Add sample run

🌯🍕
