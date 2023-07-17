
# Cluster Analysis

Credit card customers separated into segments using K-means

## Table of Contents

- [Description](#description)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Results](#results)
- [Contributing](#contributing)
- [License](#license)
- [Author](#Author)
## Description

The project applies the k-means clustering algorithm to a credit card customer dataset. By grouping customers into clusters, it aims to uncover patterns and understand the characteristics of different customer segments. The analysis focuses on the variables of average credit limit, total number of credit cards, and total visits to the bank.
## Getting started

### Prerequisites

To run the project, you need to have R and the following packages installed:

- tidyverse
- cluster

### Installation

1. Clone the repository
2. Install the required packages in R: 'tidyverse' and 'cluster'
## Usage

1. Place the "Credit Card Customer Data.csv" file in the project directory.

2. Run the R script "cluster_analysis.R" to perform the k-means clustering and generate the results.
## Results

The analysis generates an elbow curve plot to determine the optimal number of clusters for the dataset. Based on the plot, it suggests that k=4 is an appropriate choice.

The final output is a summary table presenting the average credit limit, average number of credit cards, and average visits to the bank for each cluster. Here are the results:

| Cluster | Avg_Credit_Limit | Avg_No_of_Cards | Avg_Visits_Bank |
|---------|-----------------|-----------------|-----------------|
| 1       | 71272           | 6.06            | 2.83            |
| 2       | 40425           | 5.54            | 3.46            |
| 3       | 12326           | 3.74            | 2.11            |
| 4       | 160676          | 8.68            | 0.588           |

## Contributing

Contributions are always welcome!

Please adhere to this project's `code of conduct`.

## License

This project is released under the [MIT License](LICENSE).

## Author

- [@Suraj Divakalala](https://www.github.com/codersurajdiv)

