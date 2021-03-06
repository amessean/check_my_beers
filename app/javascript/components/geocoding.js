let locateUser = () => {
  const locate = document.querySelector('#user-location');
  if (locate != null ) {
    locate.addEventListener('click', (event) => {
      navigator.geolocation.getCurrentPosition((data) => {
          const lat = data.coords.latitude;
          const lon = data.coords.longitude;
          window.location.href = `/beers?lat=${lat}&lon=${lon}`;
      });
    });
  }
}

export { locateUser };
