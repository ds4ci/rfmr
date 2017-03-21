#' Orders from an event venue.
#'
#' 20698 orders from 5345 customers over ~23 months from 2014-15.
#'
#' @format A tbl_df with 20698 rows an 10 variables:
#' \describe{
#'   \item{uid}{unique identifier for customer (integer)}
#'   \item{order_on}{order date (Date)}
#'   \item{num_seats}{# seats in order (integer)}
#'   \item{value}{total dollar value for order (numeric)}
#' }
#' @source sanitized data from a DS4CI customer
"event_orders"
