#' RFM from orders.
#'
#' \code{rfm} returns an RFM object from a customer order tbl or data frame.
#'
#' @param orders_df An orders table with one row per order and columns corresponding to the
#'   next three arguments.
#' @param cust_id A string with the column name with a unique identifier for the customer
#'   (typically integer or character).
#' @param order_date A string with the column name of the date of the order (Date).
#' @param order_value A string with the column name of the value of the order (numeric).
#' @param as_of_date An optional Date giving the orders_df "as-of-date". If omitted, last
#'   order_date will be used.
#' @return A tbl with the columns for each customer:
#' \describe{
#'   \item{\emph{unique identifier}}{Actual column name taken from "cust_id"}
#'   \item{last_on}{Last order date (Date)}
#'   \item{first_on}{First order date (Date)}
#'   \item{Frequency}{Number of orders (integer)}
#'   \item{Monetary}{Total value of orders (numeric)}
#'   \item{Recency}{Number of days between last order and as-of-date (integer)}
#'   \item{tenure}{Number of days between first order and as-of-date (integer)}
#'   }
#'
#' Note that the tbl is ungrouped.
#' @examples
#' \dontrun{
#'
#' }
#' @export
rfm <- function(orders_df, cust_id, order_date, order_value, as_of_date = NA){
  if(is.na(as_of_date)) as_of_date <- max(orders_df[[order_date]])
  orders_df %>%
    group_by_(cust_id) %>%
    summarise_(.dots = c(setNames(list(lazyeval::interp(~ max(a), a = as.name(order_date))), "last_on"),
                         setNames(list(lazyeval::interp(~ min(a), a = as.name(order_date))), "first_on"),
                         setNames(list(lazyeval::interp(~ n())), "Frequency"),
                         setNames(list(lazyeval::interp(~ sum(a), a = as.name(order_value))), "Monetary")
    )) %>%

    mutate(Recency = as.integer(as_of_date - last_on),
          tenure =  as.integer(as_of_date - first_on)) %>%
    ungroup()
}
