const track = document.querySelector('.carousel_track');
const slides = Array.from(track.children);

console.log(slides);

//whhen i click right, move slides to the right
const nextButton = document.querySelector('.carousel_button--right');
//when i click left, move slides to the left
const prevButton = document.querySelector('.carousel_button--left');
//when i click the nav indicator, move to that slide
const dotsnav = document.querySelector('.carousel_nav');

const dots = Array.from(dotsnav.children);

const slideWidth = slides[0].getBoundingClientRect().width;
console.log(slideWidth);

// arrange the slides next to one another
// slides[0].style.left=slidesWidth * 0 + 'px';
// slides[1].style.left=slideWidth * 1 + 'px';
// slides[2].style.left=slideWidth * 2 +'px';
//with the method below, i donot need to do it for many times, but just once.


const setSlidePosition = (slide, index) => {
  slide.style.left = slideWidth * index + 'px';
};
slides.forEach(setSlidePosition);

const moveToSlide = (track, currentSlide, targetSlide) =>{
  track.style.transform = 'translateX(-' + targetSlide.style.left + ')';
  currentSlide.classList.remove('current-slide');
  targetSlide.classList.add('current-slide');
};

prevButton.addEventListener('click', e => {
  const currentSlide = track.querySelector('.current-slide');
  const prevSlide = currentSlide.previousElementSibling;

   moveToSlide(track, currentSlide, prevSlide);
})

//this is for the right arrow working, when i click the right arrow, it will move to the next slide
nextButton.addEventListener('click', e => {
  const currentSlide = track.querySelector('.current-slide');
  const nextSlide = currentSlide.nextElementSibling;
  moveToSlide(track, currentSlide, nextSlide);
});

//when i click left, move slides to the left
