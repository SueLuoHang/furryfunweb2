const track = document.querySelector('.carousel_track');
const slides = Array.from(track.children);

//把向左向右的按钮选择出来，并且把下方的点给选择出来
const nextButton = document.querySelector('.carousel_button--right');
const prevButton = document.querySelector('.carousel_button--right');
const dotsNavs = document.querySelector('.carousel_nav');
const dots = Array.from(dotsNavs.children);

//使用getBoundingClientRect来调取图片距离页面上下左右的参数，以及所处的位置。返回元素的大小以及相对于视口的位置
const slideWidth = slides[0].getBoundingClientRect().width;
console.log(slideWidth);

//arrange the slides next to one another.
// slides[0].style.left = slideWidth * 0 + 'px';
// slides[1].style.left = slideWidth * 1 + 'px';
// slides[2].style.left = slideWidth * 2 + 'px';
const setSlidePosition = (slide,index) => {
  slide.style.left = slideWidth * index + 'px'
};

slides.forEach(setSlidePosition);

//when i click right button, i can move right
//listen for something
nextButton.addEventListener('click', e => {
  const currentSlide = track.querySelector('.current-slide');
  const nextSlide = currentSlide.nextElementSibling;
  const amountToMove = nextSlide.style.left;
  console.log(amountToMove);
  //move to the next slide
  track.style.transform = 'translateX(-' + amountToMove + ')';
  console.log(currentSlide.classList);
  currentSlide.classList.remove('current-slide');
  nextSlide.classList.add('current-slide');
});
