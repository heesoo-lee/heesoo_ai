// =========================
// Mobile Navigation
// =========================

const menuButton =
    document.querySelector('.menu-btn');

const nav =
    document.querySelector('nav');


if (menuButton) {

    menuButton.addEventListener(
        'click',
        () => {

            nav.classList.toggle('open');

        }
    );

}



// =========================
// Close Mobile Navigation
// =========================

document
    .querySelectorAll('nav a')
    .forEach(link => {

        link.addEventListener(
            'click',
            () => {

                nav.classList.remove('open');

            }
        );

    });



// =========================
// Scroll Animation
// =========================

const observer =
    new IntersectionObserver(
        entries => {

            entries.forEach(entry => {

                if (entry.isIntersecting) {

                    entry.target
                        .classList
                        .add('visible');

                }

            });

        },
        {
            threshold: 0.08
        }
    );



document
    .querySelectorAll(
        '.work-card, .process > div, .terminal, .hero-card'
    )
    .forEach(element => {

        element.classList.add('fade-in');

        observer.observe(element);

    });