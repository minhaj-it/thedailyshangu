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