% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/unsampled.R
\name{ga_unsampled_list}
\alias{ga_unsampled_list}
\title{List Unsampled Reports}
\usage{
ga_unsampled_list(accountId, webPropertyId, profileId)
}
\arguments{
\item{accountId}{Account Id}

\item{webPropertyId}{Web Property Id}

\item{profileId}{Profile Id}
}
\value{
Unsampled Reports List
}
\description{
List Unsampled Reports
}
\examples{

\dontrun{

    # get data.frame of unsampled reports you have available
    unsample_list <- ga_unsampled_list(accountId = "12345", 
                                       webPropertyId = "UA-12345-4", 
                                       profileId = "129371234")
                                       
    # loop through unsampled reports and download as a list of data.frames
    dl <- lapply(unsample_list$title, ga_unsampled_download, 
                 accountId = "12345", 
                 webPropertyId = "UA-12345-4", 
                 profileId = "129371234", 
                 downloadFile = FALSE)
                 
    # inspect first data.frame
    dl[[1]]
    
    # download unsampled report to csv file
    ga_unsampled_download("my_report_title", 
                          accountId = "12345", 
                          webPropertyId = "UA-12345-4", 
                          profileId = "129371234")

}



}
\seealso{
Other managementAPI functions: \code{\link{ga_accounts}},
  \code{\link{ga_adwords_list}}, \code{\link{ga_adwords}},
  \code{\link{ga_clientid_hash}},
  \code{\link{ga_custom_vars_list}},
  \code{\link{ga_custom_vars}},
  \code{\link{ga_experiment_list}},
  \code{\link{ga_experiment}}, \code{\link{ga_filter_add}},
  \code{\link{ga_filter_apply_to_view}},
  \code{\link{ga_filter_delete}},
  \code{\link{ga_filter_list}},
  \code{\link{ga_filter_update_filter_link}},
  \code{\link{ga_filter_update}},
  \code{\link{ga_filter_view_list}},
  \code{\link{ga_filter_view}}, \code{\link{ga_filter}},
  \code{\link{ga_goal_add}}, \code{\link{ga_goal_list}},
  \code{\link{ga_goal_update}}, \code{\link{ga_goal}},
  \code{\link{ga_remarketing_estimate}},
  \code{\link{ga_remarketing_get}},
  \code{\link{ga_remarketing_list}},
  \code{\link{ga_segment_list}},
  \code{\link{ga_unsampled}}, \code{\link{ga_users_list}},
  \code{\link{ga_view_list}}, \code{\link{ga_view}},
  \code{\link{ga_webproperty_list}},
  \code{\link{ga_webproperty}},
  \code{\link{google_analytics_account_list}}
}
