
// Click on Active Page JS

$(document).ready(function() { 
    $('a').click(function() { 
        $('a.nav-link.active').removeClass("active"); 
        $(this).addClass("active"); 
    }); 
}); 



// Isotop js

var $grid = $('.grid').isotope({
  itemSelector: '.grid-item',
  layoutMode: 'fitRows'
});
  

$('.filter button').on("click", function (){
  var value = $(this).attr('data-name');
  $grid.isotope({
    filter: value
  });
});

// Owl Carousel 


$('.owl-carousel').owlCarousel({
  margin:10,
  loop:false,
  autoWidth:true,
  nav:false,
  items:1,
  responsive:{
    0:{
        items:1
    },
    600:{
        items:3
    },
    1000:{
        items:5
    }
  }
})
  
  