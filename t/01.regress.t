
use warnings;
use strict;
use Test::More tests => 77;

# Check if module loads ok
BEGIN { use_ok('Math::Units', qw(convert)) }

sub doit {
    my ( $in_v, $good_v, $in_u, $out_u ) = @_;
    my $out_v = convert( $in_v, $in_u, $out_u );
    ok( abs( $good_v - $out_v ) < 0.001, "$in_v $in_u -> $out_v $out_u" );
}

doit( 100   , 90.718474   , "ton"                          , "tonne" );       
doit( 10    , 20000       , "ton"                          , "lb" );          
doit( 10    , 20000       , "tonf"                         , "lbf" );         
doit( 50    , 11.24044715 , "N"                            , "lbf" );         
doit( 9990  , 1.122920671 , "N"                            , "tonf" );        
doit( 2000  , 33.33333333 , "rpm"                          , "Hz" );          
doit( 2000  , 2000        , "rpm"                          , "cycle/min" );   
doit( 2000  , 12000       , "rpm"                          , "deg/sec" );     
doit( 87    , 26.5176     , "jerk"                         , "N/kg sec" );    
doit( 123   , 37.4904     , 'jerk'                         , 'N/kg sec' );    
doit( 12000 , 745942.8041 , 'jerk'                         , 'lbf/ton sec' ); 
doit( 123   , 134.5144357 , "meters per second per second" , "yd/s/s" );      
doit( 123   , 123         , "5^2/m^2"                      , "25 m^-1/m" );   
doit( 220   , -63.67      , "K"                            , "F" );           
doit( 20    , 68          , "C"                            , "F" );           
doit( 2     , 3.6         , "Cd"                           , "Fd" );          
doit( 1     , 21.87226597 , "m/Cd"                         , "in/Fd" );       
doit( 1     , 39.37007874 , "m"                            , "in" );          
doit( 50    , 5381955.208 , "hectare"                      , "ft^2" );        
doit( 1     , 3.280839895 , "m/s"                          , "ft/s" );        
doit( 100   , 6000        , "ft/sec"                       , "ft/min" );      
doit( 100   , 62.13711922 , "km/hr"                        , "mi/hr" );       
doit( 1     , 1000        , "Pa/Hz"                        , "Pa/kHz" );      
doit( 1     , 86.79616621 , "N"                            , "lb in/s^2" );   
doit( 2789  , 0.708406    , "in m"                         , "are" );         
doit( 1     , 745.6998716 , "hp"                           , "m N/s" );       
doit( 1     , 3.587970139 , "m m"                          , "ft yd" );       
doit( 1     , 1.056688209 , "l"                            , "qt" );          
doit( 8     , 10.84654359 , "ft lbf/s"                     , "W" );           
doit( 89    , 1.519053065 , "kg/m m"                       , "lb/in ft" );    
doit( 167   , 37.5430935  , "N"                            , "lbf" );         
doit( 278   , 14.04985893 , "N^2"                          , "lbf^2" );       
doit( 1     , 722534400   , "25 barrel^2"                  , "floz^2" );      
doit( 0.1   , 32.18       , "F^-1"                         , "C^-1" );        
doit( 1     , 3.280839895 , "m s^-1"                       , "ft s^-1" );     
doit( 1     , 1.056688209 , "l"                            , "qt" );          
doit( 1     , 264.1720524 , "m^3"                          , "gal" );         
doit( 100   , 1.731601732 , "in^3"                         , "qt" );          
doit( 7001  , 7.397874154 , "cc"                           , "qt" );          
doit( 1     , 1000000     , "m^6"                          , "l^2" );         
doit( 786   , 71.63167104 , "m in"                         , "ft yd" );       
doit( 786   , 71.63167104 , "m in"                         , "ft yd" );       
doit( 1     , 4.448221615 , "lbf"                          , "N" );           
doit( 10    , 5.555555556 , "m/Cd"                         , "m/Fd" );        
doit( 55550 , 5.555       , "angstroms"                    , "microns" );     
doit( 5e12  , 19685.03937 , "angstroms"                    , "in" );          
doit( 9000  , 9           , "Hz"                           , "kHz" );         
doit( 1     , 231         , "gal"                          , "in^3" );        
doit( 10    , 862202880   , "gal"                          , "pnt^3" );       
doit( 100   , 12.44521605 , "pnt^2"                        , "mm^2" );        
doit( 9e9   , 3175        , "pnt"                          , "km" );          
doit( 100   , 30.48       , "ft"                           , "m" );           
doit( 100   , 62.13711922 , "km/hr"                        , "mi/hr" );       
doit( 100   , 6000        , "ft/sec"                       , "ft/min" );      
doit( 100   , 30.48       , "ft/sec"                       , "m/sec" );       
doit( 100   , 360000      , "feet per second squared"      , "ft/min^2" );    
doit( 100   , 30.48       , "ft/sec"                       , "m/sec" );       
doit( 1     , 1           , "N^2"                          , "g^2 km^2/s^4" );
doit( 17    , 1475.534826 , "N"                            , "lb in/s^2" );   
doit( 212   , 100         , "F"                            , "C" );           
doit( 32    , 0           , "F"                            , "C" );           
doit( 70    , 21.11111111 , "F"                            , "C" );           
doit( 98.6  , 37          , "F"                            , "C" );           
doit( 1e20  , 6102374.409 , "cubic microns"                , "cubic inches" );
doit( 980   , 38.58267717 , "microns"                      , "milliinches" ); 
doit( 9700  , 381.8897638 , "microns"                      , "milli-inches" );
doit( 8976  , 353.3858268 , "microns"                      , "m-in" );        
doit( 4500  , 4.5         , "cc"                           , "l" );           
doit( 500   , 8.193532    , "in^3"                         , "l" );           
doit( 500   , 8.658008658 , "in^3"                         , "qt" );          
doit( 17896 , 11.54578336 , "m^2/m m^3"                    , "in in/in^4" );  
doit( 5     , 720         , 'square feet'                  , 'square inches' );
doit( 212   , 100         , 'Fahrenheit'                   , 'Celsius' );           
doit( 20    , 68          , 'celsius'                      , 'fahrenheit' );           


# Check error messages

$@ = '';
eval { convert(123, 'foo', 'm^2'); };
like($@, qr/unknown unit/, 'die if unknown units');

$@ = '';
eval { convert(123, 'm', 'm^2'); };
like($@, qr/incompatible units/, 'die if incompatible units');

