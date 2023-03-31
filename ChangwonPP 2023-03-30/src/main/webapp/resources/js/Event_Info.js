window.onload = function() {
  const wrapper = document.querySelector('.slider-wrapper');
  const images = document.querySelectorAll('.slider-wrapper img');
  const buttonPrev = document.querySelector('.slider-button.left');
  const buttonNext = document.querySelector('.slider-button.right');
  let imageIndex = 0;
  const imageWidth = images[0].clientWidth;

  buttonPrev.addEventListener('click', () => {
      imageIndex = (imageIndex > 0) ? imageIndex - 1 : images.length - 1;
      wrapper.style.transform = `translateX(-${imageIndex * imageWidth}px)`;
  });

  buttonNext.addEventListener('click', () => {
      imageIndex = (imageIndex < images.length - 1) ? imageIndex + 1 : 0;
      wrapper.style.transform = `translateX(-${imageIndex * imageWidth}px)`;
  });

  setInterval(() => {
      imageIndex = (imageIndex < images.length - 1) ? imageIndex + 1 : 0;
      wrapper.style.transform = `translateX(-${imageIndex * imageWidth}px)`;
  }, 5000);
};