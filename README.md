# Udacity Data Science Nanodegree Project 1

InvestSure is a fictional investment company that manages the retirement accounts of the employees of its customers. It gets a dump of many data elements in CSV format from transaction systems and has been using Excel to load this data for analysis. However, the data has now grown to a size where this approach is no longer viable. Therefore, InvestSure is trying to use Jupyter Notebooks and Python augmented by additional libraries such as Pandas and Matplotlib to gain insights into this data.

The entities in this data model are as follows:

-   Facts
    -   Transactions: purchases and redemption of mutual funds
    -   Touches: the various means by which InvestSure contacts the customers' employees to give them advise on funds to purchase.
-   Dimensions
    -   Customers: A list of InvestSure's customers categorized the industry that they belong to
    -   Contacts: The employees of the above customers who manage their retirement accounts using the InvestSure platform
    -   Products: A list of mutual funds that InvestSure offers its investors
    -   State: The list of states categorized by the regions that they belong to help in geographical analysis

The steps taken to load the above into Pandas dataframes and for analyzing them are described in the corresponding Jupyter Notebook.

## Insights

The analysis done on this data tries to answer the following questions:

-   Does an increase in touches result in an increase in sales?
-   Does a low count of touches result in higher redemptions?
-   Are all highly sold products of Morning Star Rating 4 or 5?
-   Is there a correlation between geographic regions and higher sales?
