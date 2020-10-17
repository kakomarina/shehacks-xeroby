# -*- coding: utf-8 -*-
"""
Created on Sat Oct 17 11:57:56 2020

@author: Fuso
"""

from tkinter import *
from datetime import date
import gspread
from oauth2client.service_account import ServiceAccountCredentials
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import WebDriverWait
from bs4 import BeautifulSoup
import urllib.request as request
import csv
import time
import requests
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities
from selenium.webdriver.chrome.options import Options
import logging
import threading

def getPlantInfo(link):
    
    linha = []
    
    page = requests.get(link)
    bs = BeautifulSoup(page.text, 'html.parser')
    walk = bs.find('div', {'id': 'container'})
    walk = walk.find('main')
    walk = walk.find('article')
    walk = walk.find('div', {'id':'custom_field_box'})
    info = walk.find_all('li')
    
    linha.append(link)
    
    for li in info:
        li = li.get_text().split(':')
        linha.append(li[1])
        #print(li[1])
    
    print(linha)
    

page_source = requests.get('https://www.jardineiro.net/plantas-de-a-a-z-por-nome-popular')
bs = BeautifulSoup(page_source.text, 'html.parser')

walk = bs.find('div', {'id': 'container'})
walk = walk.find('main')
walk = walk.find('article')
walk = walk.find('div', {'class': 'post-entry'})

allPlants = walk.find('div', {'class':'col-md-2 col-sm-3 col-xs-4 pt-cv-content-item pt-cv-1-col'})

links = []

for plant in allPlants:
    url = plant.find('a')
    links.append(url['href'])
    getPlantInfo(url['href'])
    
print(links)
print(len(links))

