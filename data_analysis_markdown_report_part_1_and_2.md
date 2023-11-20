# Module-7-SQL-Challenge - Data Analysis MarkDown Report

### Data Analysis
### Part 1:
The CFO of my firm has requested a report to help analyze potential fraudulent transactions. Using your newly created database, generate queries that will discover the information needed to answer
the following questions, then using my repository's ReadME file to create a markdown report I can share with the CFO:
Some fraudsters hack a credit card by making several small transactions (generally less than $2.00), which are typically ignored by cardholders.

### How can you isolate (or group) the transactions of each cardholder?
### Count the transactions that are less than $2.00 per cardholder.
### Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.

To determine if there is any evidence to suggest that a credit card has been hacked, compare the number of low-value transactions to the overall number of transactions for each cardholder
If a cardholder has a significantly higher proportion of low-value transactions, it could be an indication of fraudulent activity.

Taking my investigation a step further by considering the time period in which potentially fraudulent transactions are made.
### What are the top 100 highest transactions made between 7:00 am and 9:00 am?
* Do you see any anomalous transactions that could be fraudulent?
* Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
* If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

Review the list of top 100 transactions and look for any that appear unusual or out of the ordinary. For example, you might look for transactions that are:
* Much larger or smaller than the typical transactions for that cardholder
* Made at unusual times or locations
* Not consistent with the cardholder's usual spending patterns
If you find any transactions that appear anomalous, you can investigate them further to determine if they are fraudulent.

There are a few reasons why there might be a higher number of fraudulent transactions made between 7:00 am and 9:00 am:
* People are often groggy and less alert in the morning, which can make them more susceptible to scams.
* People are often rushing to get to work or school in the morning, which can make them more likely to make mistakes, such as entering their credit card information into a phishing website.
* Fraudsters may target this time frame because they know that people are more likely to be distracted and less likely to notice fraudulent activity.
If you do find that there is a higher number of fraudulent transactions made between 7:00 am and 9:00 am, you can take steps to mitigate this risk, such as:
* Educating cardholders about the risks of fraud and how to protect themselves.
* Implementing fraud detection systems that can identify and stop fraudulent transactions in real time.
* Monitoring fraudulent activity closely and taking action to address any trends that you see.

### Part 2:
My CFO has also requested detailed trends data on specific card holders. Using the starter notebook to query my database and generate visualizations that supply the requested information as follows, then adding my visualizations and observations to my markdown report:
The two most important customers of the firm may have been hacked. I will verify if there are any fraudulent transactions in their history. For privacy reasons, I only know that their cardholder IDs are 2 and 18. Using hvPlot, I will create a line plot representing the time series of transactions over the course of the year for each cardholder separately. Next, to better compare their patterns, I will create a single line plot that contains both card holders' trend data.

### What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale.

Card holder 2 have very frequent transcations amounting between $1 to $20.
Card holder 18 uses their card sparsely and has transcations amounting between $10 to $1750, with many big purchases above $1000 once in a while.
The difference don't necessary suggest fraudelent transactions. The purchases of card holder 18 could be paying off bigger debts to avoid accured tax for example or simply buying furniture. There is not enough evidence data to suggest there is a fraudelent pattern appearing on either of the card holders.

The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills. Again, for privacy reasons, I know only that the cardholder ID in question is 25.
Using hvPlot, I will create a box plot, representing the expenditure data from January 2018 to June 2018 for cardholder ID 25.

### Are there any outliers for cardholder ID 25? How many outliers are there per month?

Yes. There seems to be outliers ranging from 1 to 3 dependent on the month. February is the only month without any outlier.

### Do you notice any anomalies? Describe your observations and conclusions.

The most concerning anomalies are the outliers with purchase amounts in the thousand ranges. This leds to an alarming conclusion and the transactions will
need to be carefully reviewed to come with the conclusion.

![Picture](https://www.columbia.edu/content/themes/custom/columbia/assets/img/cu-header.svg)



