// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import flatpickr from 'flatpickr';
import 'flatpickr/dist/flatpickr.css';

document.addEventListener('turbo:load', () => {
    flatpickr('.datepicker', {
        enableTime: false, // Disable time picker
        dateFormat: 'Y-m-d', // Rails default date format
    });
});
