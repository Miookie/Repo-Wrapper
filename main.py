from selenium import webdriver
import sys
from selenium.webdriver.firefox.options import Options

def extractDescription(link: str):
    options = Options()
    options.headless = True
    driver = webdriver.Firefox(options=options)
    driver.get(link)
    return driver.find_element("xpath", '//p[@class="f4 my-3"]').text

def extractName(link: str):
    parts=link.split('/')
    name=parts[-1]
    return name.split('.')[0]

if __name__=="__main__":
    command = sys.argv[1]
    link = sys.argv[2]
    if command=="-n":
        print(extractName(link))
    elif command=="-d":
        print(extractDescription(link))
