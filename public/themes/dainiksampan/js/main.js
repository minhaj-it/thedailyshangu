
// single page Print Functionality
        document.addEventListener('DOMContentLoaded', function() {
            // 1. Print Functionality
            const printButton = document.getElementById('print-btn');
            if (printButton) {
                printButton.addEventListener('click', function() {
                    window.print();
                });
            }

            // 2. Font Size Adjustment Functionality
            const articleContent = document.getElementById('article-content');
            const increaseFontButton = document.getElementById('font-increase-btn');
            const decreaseFontButton = document.getElementById('font-decrease-btn');

            const minFontSize = 12; // Minimum font size in pixels
            const maxFontSize = 24; // Maximum font size in pixels
            const changeStep = 1;   // How many pixels to change on each click

            function changeFontSize(amount) {
                if (!articleContent) return;

                // Get current font size as a number
                const currentSizeStr = window.getComputedStyle(articleContent).fontSize;
                let currentSize = parseFloat(currentSizeStr);

                // Calculate new font size
                let newSize = currentSize + amount;

                // Apply limits
                if (newSize < minFontSize) {
                    newSize = minFontSize;
                } else if (newSize > maxFontSize) {
                    newSize = maxFontSize;
                }

                // Apply the new font size
                articleContent.style.fontSize = newSize + 'px';
            }

            if (increaseFontButton) {
                increaseFontButton.addEventListener('click', function() {
                    changeFontSize(changeStep); // Increase by 'changeStep' pixels
                });
            }

            if (decreaseFontButton) {
                decreaseFontButton.addEventListener('click', function() {
                    changeFontSize(-changeStep); // Decrease by 'changeStep' pixels
                });
            }
        });
// new

 document.addEventListener('DOMContentLoaded', function () {
            const darkModeToggle = document.getElementById('darkModeToggle');
            const body = document.body;
            const icon = darkModeToggle.querySelector('i');

            darkModeToggle.addEventListener('click', function (e) {
                e.preventDefault();
                body.classList.toggle('dark-mode');

                // Change icon based on mode
                if (body.classList.contains('dark-mode')) {
                    icon.classList.remove('bi-moon-fill');
                    icon.classList.add('bi-sun-fill');
                } else {
                    icon.classList.remove('bi-sun-fill');
                    icon.classList.add('bi-moon-fill');
                }
            });
        });


// news
// Fade-in animation on scroll
    document.addEventListener('DOMContentLoaded', function () {
        const faders = document.querySelectorAll('.fade-in');

        const appearOptions = {
            threshold: 0.1,
            rootMargin: "0px 0px -50px 0px"
        };

        const appearOnScroll = new IntersectionObserver(function (entries, appearOnScroll) {
            entries.forEach(entry => {
                if (!entry.isIntersecting) {
                    return;
                } else {
                    entry.target.classList.add('visible');
                    appearOnScroll.unobserve(entry.target);
                }
            });
        }, appearOptions);

        faders.forEach(fader => {
            appearOnScroll.observe(fader);
        });
    });