## ETL Report

# Sources of Data -- E
Kaggle -- Python Questions from Stack Overflow
Kaggle -- Python Answers from Stack Overflow
The data was formatted as a csv. (A really strange csv with a messed up 'body' column)
We extracted the data into a Juypter notebook with pandas.

# Types of Transformations -- T
We truncated the data sets using the command line. truncate -20M <filename>
    We had to truncate it, because the data was over 2GB in size when we started.
        (We found out the hard way github does not like that.)
    At first it didn't work because of the afore mentioned messed up 'body' column.
Then we joined the two data sets on Questions.Id and Answers.parentId.
Then we did a dropna. Cause that's what you do. You drop the na.
Then we cleaned up the data by renaming the columns to make them readable.
Then we turned all the float type columns to int.

# Type of final DP --L
We exported the data with sqlAlchemy.
We used PGadmin to load the data, so a relational database.
We chose to use PGadmin, because it was the most comfortable for us.

# Replicate
To replicate our steps, all you have to do is run the juypter notebook.
    Except: In the "rds_connection_string" you have to change "postgres:postgres@localhost:5432/sodb"
    to your "<username>:<password>@localhost:5432/<your_database>"