function userScroll() {
    const navbar = document.querySelector('.navbar');
    const toTopBtn = document.querySelector('#to-top');
  
    window.addEventListener('scroll', () => {
      if (window.scrollY > 50) {
        navbar.classList.add('navbar-sticky');
        toTopBtn.classList.add('show');
      } else {
        navbar.classList.remove('navbar-sticky');
        toTopBtn.classList.remove('show');
      }
    });
  }

// Event Listeners
document.addEventListener('DOMContentLoaded', userScroll);