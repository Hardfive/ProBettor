# Webscraping

## Description
"*Without data there are no data science*.", in order to have the required data to the project, we decide to use webscraping tool.\
This decision was dictate by two reasons; first, **limited budget**,  the majority of API services require payment fee,\
then for **educational purpose**, Internet has or should say *is* the largest database of the world, as someone pretending working with data,\
you need to have some skills in retrievement data over the web. To achieve this task, we have several choices like Scrapy or Beautiful soup, finally we choose [*Selenium*](https://www.selenium.dev/), which is a web automation tool that is easy to get started with and can be used for collecting data from the web. This repository serves as the foundation of the project, enabling us to acquire the necessary data for our study.\
Football is a package, it contains two directory at the root:
* **Scaper** is the folder who contains the *spider* package, in it is written two classes object and their scraping methods.\
And then the *pipeline* package (where is the code that preprocess the data, how there're stored in the database and handle the behavior of the spider) 
* **league** contains the script of each league supported by probettor and the process used to execute them.
