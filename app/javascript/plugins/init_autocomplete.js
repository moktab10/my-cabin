import places from 'places.js';

const initAutocomplete = () => {
  const localisationInput = document.getElementById('cabin_localisation');
  if (localisationInput) {
    places({ container: localisationInput });
  }
};

export { initAutocomplete };
