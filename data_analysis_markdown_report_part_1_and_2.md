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
My CFO has also requested detailed trends data on specific card holders. Using the starter notebook to query my database and generate visualizations that supply the requested information as follows,
then adding my visualizations and observations to my markdown report:
The two most important customers of the firm may have been hacked. I will verify if there are any fraudulent transactions in their history. For privacy reasons, I only know that their cardholder IDs are 2
and 18. Using hvPlot, I will create a line plot representing the time series of transactions over the course of the year for each cardholder separately.
Next, to better compare their patterns, I will create a single line plot that contains both card holders' trend data.

### What difference do you observe between the consumption patterns? Does the difference suggest a fraudulent transaction? Explain your rationale.

* Analyze Transaction Patterns: For cardholders with IDs 2 and 18, create line plots representing their transaction trends over the entire year.
* Compare Patterns: Create a single line plot showing both cardholders' transaction trends together.
* Observe Differences: Analyze the differences in consumption patterns between the two cardholders.
* Assess Fraudulent Activity: Determine whether the observed differences suggest possible fraudulent transactions.

Reasons for Identifying Potential Fraudulent Transactions:
* Protecting Customers: Identifying potential fraudulent transactions helps protect customers from financial losses and identity theft. By detecting fraudulent activity early, you can prevent unauthorized charges and alert customers of potential breaches.

* Mitigating Financial Losses: Fraudulent transactions can lead to significant financial losses for both customers and businesses. Identifying and preventing fraudulent activity helps minimize these losses and protects the overall financial health of the business.

* Maintaining Customer Trust: Demonstrating proactive measures to combat fraud fosters trust and confidence among customers. By addressing fraudulent activity promptly, you show customers that their financial security is a priority.

Reasons for Investigating Potential Unauthorized Charges:

* Verifying Customer Claims: Investigating potential unauthorized charges allows you to verify customer claims and determine whether their concerns are legitimate. This helps ensure that genuine cases of unauthorized usage are addressed promptly.

* Identifying Unauthorized Usage Patterns: Investigating unauthorized charges can reveal patterns of fraudulent activity, such as unusual spending habits or transactions from unfamiliar locations. These patterns can help identify potential fraudsters and prevent future incidents.

* Protecting Cardholder Information: Investigating unauthorized charges helps protect cardholder information from further misuse. By identifying and addressing unauthorized activity, you can prevent cardholders' credentials from being exploited for fraudulent transactions. 

The CEO of the biggest customer of the firm suspects that someone has used her corporate credit card without authorization in the first quarter of 2018 to pay quite expensive restaurant bills.
Again, for privacy reasons, I know only that the cardholder ID in question is 25.
Using hvPlot, I will create a box plot, representing the expenditure data from January 2018 to June 2018 for cardholder ID 25.

### Are there any outliers for cardholder ID 25? How many outliers are there per month?
### Do you notice any anomalies? Describe your observations and conclusions.

* Visualize Expenditure Data: Create a box plot representing the expenditure data for cardholder ID 25 from January 2018 to June 2018.
* Identify Outliers: Identify any outliers in the expenditure data for cardholder ID 25.
* Analyze Outlier Distribution: Determine the number of outliers per month.
* Assess Anomalies: Analyze the presence of anomalies and draw conclusions about potential unauthorized charges.

Reasons for Identifying Potential Fraudulent Transactions:

* Protecting Customers: Identifying potential fraudulent transactions helps protect customers from financial losses and identity theft. By detecting fraudulent activity early, you can prevent unauthorized charges and alert customers of potential breaches.

* Mitigating Financial Losses: Fraudulent transactions can lead to significant financial losses for both customers and businesses. Identifying and preventing fraudulent activity helps minimize these losses and protects the overall financial health of the business.

* Maintaining Customer Trust: Demonstrating proactive measures to combat fraud fosters trust and confidence among customers. By addressing fraudulent activity promptly, you show customers that their financial security is a priority.

Reasons for Investigating Potential Unauthorized Charges:

* Verifying Customer Claims: Investigating potential unauthorized charges allows you to verify customer claims and determine whether their concerns are legitimate. This helps ensure that genuine cases of unauthorized usage are addressed promptly.

* Identifying Unauthorized Usage Patterns: Investigating unauthorized charges can reveal patterns of fraudulent activity, such as unusual spending habits or transactions from unfamiliar locations. These patterns can help identify potential fraudsters and prevent future incidents.

* Protecting Cardholder Information: Investigating unauthorized charges helps protect cardholder information from further misuse. By identifying and addressing unauthorized activity, you can prevent cardholders' credentials from being exploited for fraudulent transactions.

Reasons for Analyzing Outlier Distribution and Drawing Conclusions about Potential Unauthorized Charges:

* Gaining Insights into Expenditure Patterns: Analyzing outlier distribution and drawing conclusions can provide valuable insights into cardholder expenditure patterns and identify potential anomalies.

* Assessing the Likelihood of Unauthorized Usage: Outlier analysis can help assess the likelihood of unauthorized card usage by examining unusual spending patterns and concentrated outliers.

* Guiding Further Investigation and Protective Measures: Conclusions drawn from outlier analysis can guide further investigation, such as contacting the cardholder or reviewing transaction details. Additionally, it can help implement appropriate security measures to prevent future fraudulent activity.

* Protecting Cardholders and the Business: By analyzing outlier distribution and drawing conclusions about potential unauthorized charges, you can protect cardholders from financial losses and safeguard the business from fraudulent activities. This proactive approach helps maintain trust and financial stability.

![Picture](https://www.columbia.edu/content/themes/custom/columbia/assets/img/cu-header.svg)



