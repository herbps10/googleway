// Generated by using Rcpp::compileAttributes() -> do not edit by hand
// Generator token: 10BE3573-1514-4C36-9D1C-5A225CD40393

#include <Rcpp.h>

using namespace Rcpp;

// rcpp_decode_pl
DataFrame rcpp_decode_pl(std::string encoded);
RcppExport SEXP googleway_rcpp_decode_pl(SEXP encodedSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< std::string >::type encoded(encodedSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_decode_pl(encoded));
    return rcpp_result_gen;
END_RCPP
}
// rcpp_encode_pl
Rcpp::String rcpp_encode_pl(Rcpp::NumericVector latitude, Rcpp::NumericVector longitude, int num_coords);
RcppExport SEXP googleway_rcpp_encode_pl(SEXP latitudeSEXP, SEXP longitudeSEXP, SEXP num_coordsSEXP) {
BEGIN_RCPP
    Rcpp::RObject rcpp_result_gen;
    Rcpp::RNGScope rcpp_rngScope_gen;
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type latitude(latitudeSEXP);
    Rcpp::traits::input_parameter< Rcpp::NumericVector >::type longitude(longitudeSEXP);
    Rcpp::traits::input_parameter< int >::type num_coords(num_coordsSEXP);
    rcpp_result_gen = Rcpp::wrap(rcpp_encode_pl(latitude, longitude, num_coords));
    return rcpp_result_gen;
END_RCPP
}
