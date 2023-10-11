# Contributing to ProBettor 

First off, thanks for taking the time to contribute!

The following is a set of guidelines for contributing to ProBettor, these are mostly guidelines, not rules. Use your best judgment, and feel free to propose changes to this document in a pull request.


[Code of Conduct](#code-of-conduct)

[What should I know before I get started?](#what-should-i-know-before-i-get-started)
  * [ProBettor Model Prediction](#model-prediction)
  * [ProBettor User Interface](#user-interface)

[How Can I Contribute?](#how-can-i-contribute)
  * [Reporting Bugs](#reporting-bugs)
  * [Suggesting Enhancements](#suggesting-enhancements)

[TODO](#todo)

## Code of Conduct

This project and everyone participating in it is governed by the [Probettor Code of Conduct](CODE_OF_CONDUCT.md). By participating, you are expected to uphold this code. Please report unacceptable behavior to [hhdur5132@gmail.com](mailto:hhdur5132@gmail.com).

## What should I know before I get started?

To get a sense of how this project is organized , take a look at the basic structure

* [webscraping](./football/webscraping/) - This directory is the foundation of the project, consisting of multiple subdirectories with modules, classes, and functions for data collection and processing. Two tools are used to build web crawling robots:\
**Selenium** et **Scrapy**.
* [analysis](./football/analysis/) - It is the second directory in the hierarchy, coming right after data collection. Exploratory Data Analysis (EDA) is conducted in notebooks. This analysis allows for visualization, interpretation, pattern discovery, and model building.
* [data](./football/data/) - Contains CSV files for a quick overview of the data and a copy of the local database.

this overview should be a good starting point.

### Model Prediction

This part is undoubtedly the most interesting. A data scientist will create a model based on their skills and their understanding of the data. They can either use a model from the sklearn library or a deep neural network using the Keras API.\
Of course, not all Probettor models will be used in the same way. For example, a contributor can propose a model (which takes parameters such as bankroll amount, betting habits, and results) to suggest a viable financial strategy (Indeed, sports betting is not limited to just making accurate predictions).\
Probettor aims to be a comprehensive tool to educate players in the best possible way.

### User Interface

The ultimate goal is to push each contributor's models into production and make them accessible to users.\
Contributors with web development skills will be able to take care of the aesthetic aspects of this process.


## How Can I Contribute?

### Reporting Bugs

This section guides you through submitting a bug report for Probettor. Following these guidelines helps maintainers and the community understand your report, reproduce the behavior, and find related reports.

When you are creating a bug report, please [include as many details as possible](#how-do-i-submit-a-good-bug-report).

> **Note:** If you find a **Closed** issue that seems like it is the same thing that you're experiencing, open a new issue and include a link to the original issue in the body of your new one.

#### Before Submitting A Bug Report

* **Perform a [cursory search](https://github.com/search?q=+is%3Aissue+user%3AProBettor)** to see if the problem has already been reported. If it has **and the issue is still open**, add a comment to the existing issue instead of opening a new one.

#### How Do I Submit A (Good) Bug Report?

Explain the problem and include additional details to help maintainers reproduce the problem:

* **Use a clear and descriptive title** for the issue to identify the problem.
* **Describe the exact steps which reproduce the problem** in as many details as possible. 
* **Explain which behavior you expected to see instead and why.**

### Suggesting Enhancements

This section guides you through submitting an enhancement suggestion for Probettor, including completely new features and minor improvements to existing functionality. Following these guidelines helps maintainers and the community understand your suggestion and find related suggestions.

#### How Do I Submit A (Good) Enhancement Suggestion?

* **Use a clear and descriptive title** for the issue to identify the suggestion.
* **Provide a step-by-step description of the suggested enhancement** in as many details as possible.
* **Describe the current behavior** and **explain which behavior you expected to see instead** and why.
* **Explain why this enhancement would be useful** to most ProBettor users.

### TODO

---

- [x] Build a simple webscraper to collect data.
- [ ] Explore the data and make a machine learning model based on it.
- [ ] Interprete the results and orient the data collection process if needed, in order to have the data required to improve the model accuracy
- [ ] Optimize webscraping and other module (make unitest and more crawler..)
- [ ] Design ProBettor logo
- [ ] Migrate the project (database) to the cloud (Open Stack)
- [ ] Build a website for the project.
