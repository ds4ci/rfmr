% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rfm.R
\name{rfm}
\alias{rfm}
\title{RFM from orders.}
\usage{
rfm(orders_df, cust_id, order_date, order_value, as_of_date = NA)
}
\arguments{
\item{orders_df}{An orders table with one row per order and columns corresponding to the
next three arguments.}

\item{cust_id}{A string with the column name with a unique identifier for the customer
(typically integer or character).}

\item{order_date}{A string with the column name of the date of the order (Date).}

\item{order_value}{A string with the column name of the value of the order (numeric).}

\item{as_of_date}{An optional Date giving the orders_df "as-of-date". If omitted, last
order_date will be used.}
}
\value{
A tbl with the columns for each customer:
\describe{
  \item{\emph{unique identifier}}{Actual column name taken from "cust_id"}
  \item{last_on}{Last order date (Date)}
  \item{first_on}{First order date (Date)}
  \item{Frequency}{Number of orders (integer)}
  \item{Monetary}{Total value of orders (numeric)}
  \item{Recency}{Number of days between last order and as-of-date (integer)}
  \item{tenure}{Number of days between first order and as-of-date (integer)}
  }

Note that the tbl is ungrouped.
}
\description{
\code{rfm} returns an RFM object from a customer order tbl or data frame.
}
\examples{
\dontrun{

}
}
