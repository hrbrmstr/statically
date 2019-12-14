#' Generate a webpage screenshot
#'
#' @param url the URL to screenshot
#' @param quality image quality. Defaults to 100 (i.e. 100%)
#' @param full_page generate a full page scren shot (may be very "long"). Default `FALSE`.
#' @param mobile generate a screenshot of a mobile version of the website? Default `FALSE`.
#' @param width screen width (pixels). Defaults to `NULL` which uses the Statically
#'        default (which appears to be 1280).
#' @param type which image format to request. This function returns a `{magick}` object
#'        regardless of what is specified here. Using a type other than "`jpeg`"
#'        (the API default and this function's default) may result in subtly different
#'        captures.
#' @param ... passed on to [httr::GET()].
#' @return `{magick}` object
#' @export
#' @examples
#' generate_screenshot("https://cran.r-project.org")
generate_screenshot <- function(url, quality = 100L, full_page = FALSE,
                                mobile = FALSE, width = NULL,
                                type = c("jpeg", "png", "webp"),
                                ...) {

  url <- sub("^http[s]*://", "", url[1])

  type <- match.arg(tolower(type[1]), c("jpeg", "png", "webp"))

  full_page <- as.logical(full_page[1])
  full_page <- if (full_page) tolower(full_page) else NULL

  mobile <- as.logical(mobile[1])
  mobile <- if (mobile) tolower(mobile) else NULL

  quality <- as.integer(quality[1])
  stopifnot((quality > 0) && (quality <= 100))

  httr::GET(
    url = sprintf("https://cdn.statically.io/screenshot/%s", url),
    query = list (
      type = type,
      quality = quality,
      fullPage = full_page,
      mobile = mobile,
      w = width
    ),
    .STATICALLY_UA,
    ...
  ) -> res

  httr::stop_for_status(res)

  magick::image_read(res$content)

}
