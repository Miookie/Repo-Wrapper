from selenium import webdriver
import sys
from selenium.webdriver.firefox.options import Options

def extractDescription(link: str):
    options = Options()
    options.headless = True
    driver = webdriver.Firefox(options=options)
    driver.get(link)
    return driver.find_element("xpath", '//p[@class="f4 my-3"]').text
if __name__=="__main__":
    link = sys.argv[1]
    print(extractDescription(link))
