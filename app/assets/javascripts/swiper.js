const swiper = new Swiper('.swiper', {

  // Optional parameters
  direction: 'horizontal',
  speed: 1000,
  loop: true,
  centeredSlides: true,
  effect: 'coverflow',
	slidesPerView: 1,
	slidesPerGroup: 1,
	spaceBetween: 0,

  // If we need pagination
  pagination: {
    el: '.swiper-pagination',
  },

  autoplay: {
    delay: 2500,
    stopOnLast: false,
  },

  breakpoints: {
		800: {
    	slidesPerView: 3.5,
      spaceBetween: 10,
      slidesPerGroup: 1,
		},
  }
});