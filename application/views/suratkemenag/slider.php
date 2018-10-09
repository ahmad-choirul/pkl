

<!-- slider -->
<link rel="stylesheet" href="<?php echo base_url(); ?>assets/slider/styles/styles.css" type="text/css" media="all">
<script type="text/javascript" src="<?php echo base_url(); ?>assets/slider/js/modernizr.custom.79639.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">

<div id="slider" class="sl-slider-wrapper">
<div class="sl-slider">
<div class="sl-slide bg-1" data-orientation="horizontal" data-slice-rotation="-15" data-slice2-rotation="-25" data-slice1-scale="2" data-slice2-scale="2">
<div class="sl-slide-inner">
<h2><p></p></h2>
</div>
</div>
<div class="sl-slide bg-2" data-orientation="vertical" data-slice-rotation="10" data-slice2-rotation="-15" data-slice1-scale="1.5"data-slice2-scale="1.5">
<div class="sl-slide-inner">
<h2><p></p></h2>
</div>
</div>

<nav id="nav-arrows" class="nav-arrows"> <span class="nav-arrow-prev">Previous</span> <span class="nav-arrow-next">Next</span> </nav>
<nav id="nav-dots" class="nav-dots"> <span class="nav-dot-current"></span> <span></span> </nav>
</div>
</div>
<script type="text/javascript" src="<?php echo base_url(); ?>assets/theme/js/lib/jquery/jquery.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/slider/js/jquery.ba-cond.min.js"></script> 
<script type="text/javascript" src="<?php echo base_url(); ?>assets/slider/js/jquery.slitslider.js"></script> 
<script type="text/javascript"> 
            $(function() {
            
                var Page = (function() {

                    var $navArrows = $( '#nav-arrows' ),
                        $nav = $( '#nav-dots > span' ),
                        slitslider = $( '#slider' ).slitslider( {
                            onBeforeChange : function( slide, pos ) {

                                $nav.removeClass( 'nav-dot-current' );
                                $nav.eq( pos ).addClass( 'nav-dot-current' );

                            }
                        } ),

                        init = function() {

                            initEvents();
                            
                        },
                        initEvents = function() {

                            // add navigation events
                            $navArrows.children( ':last' ).on( 'click', function() {

                                slitslider.next();
                                return false;

                            } );

                            $navArrows.children( ':first' ).on( 'click', function() {
                                
                                slitslider.previous();
                                return false;

                            } );

                            $nav.each( function( i ) {
                            
                                $( this ).on( 'click', function( event ) {
                                    
                                    var $dot = $( this );
                                    
                                    if( !slitslider.isActive() ) {

                                        $nav.removeClass( 'nav-dot-current' );
                                        $dot.addClass( 'nav-dot-current' );
                                    
                                    }
                                    
                                    slitslider.jump( i + 1 );
                                    return false;
                                
                                } );
                                
                            } );

                        };

                        return { init : init };

                })();

                Page.init();

        
            
            });
        </script>
<!-- slider -->
