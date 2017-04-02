#' Orders from an event venue.
#'
#' 20698 orders from 5345 customers over ~23 months from 2014-15.
#'
#' @format A tbl_df with 20,698 rows and 10 variables:
#' \describe{
#'   \item{uid}{unique identifier for customer (integer)}
#'   \item{order_on}{order date (Date)}
#'   \item{num_seats}{# seats in order (integer)}
#'   \item{value}{total dollar value for order (numeric)}
#' }
#' @source sanitized data from a prior client
"event_orders"

#' Orders from an on-line& catalog retailer
#' 541k orders from 135k customers over 2 1/2 years of ~900 products in 5 categories.
#'
#' Note that we have suppressed the product name/description which would normally be in an order file.
#'
#' @format  A tbl_df with 541,101 rows and 7 variables
#' \describe{
#'   \item{CustID}{The unique customer identifier}
#'   \item{OrderID}{The unique order identifier. The order may have multiple lines}
#'   \item{OrderDate}{The date of the order}
#'   \item{OrderChannel}{How the order came in (phone1, phone2, web1, web2)}
#'   \item{LineNum}{The line number within the order}
#'   \item{SKU}{Stock Keeping Unit. The unique product identifier}
#'   \item{Quantity}{How many items of the SKU were ordered}
#'   \item{Amount}{The total value amount for the order line. (unit price) * Quantity}
#'   \item{Category}{The product category code (C, G, I, N, T, X)}
#' }
#' @source sanitized data from a prior client
"retail_orders"
