<!-- Wrapper Section Starts Here -->
<div class="wrapper container-fluid">
    <div class="row d-flex justify-content-between align-items-center">
        <div class="imgbx col col-sm-6 col-md-4">
            <img src="assets/images/p1.png" id="olive" alt="Olive" class="wrapper-img mt-3">
        </div>
        <div class="infobx col col-sm-6 col-md-8">
            <h2 class="display-3 ">Hii... I Am Olive</h2>
            <p class="text-faded mt-3">I'm Here To Solve Your Queries</p>
            <div onclick="goToHome()" class="formbx d-flex justify-content-between">
                <input type="text" placeholder="Type Your Message" id="">
                <a href="olive.php" ><i class="bi bi-box-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>
<script>
    function goToHome(){ window.location.href = "olive.php"};
</script>

<!-- .Wrapper -->
<!-- Footer -->
<footer class="text-center text-lg-start bg-light text-muted">
    <!-- Section: Social media -->
    <section class="d-flex justify-content-center justify-content-lg-between p-4 border-bottom">
        <!-- Left -->
        <div class="me-5 d-none d-lg-block">
            <span>Stay Connect With Us..</span>
        </div>
        <!-- Left -->

        <!-- Right -->
        <div>
            <a href="#" class="me-4 text-reset">
                <i class="fab fa-facebook-f"></i>
            </a>
            </a>
            <a href="#" class="me-4 text-reset">
                <i class="fab fa-instagram"></i>
            </a>
            <a href="#" class="me-4 text-reset">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="#" class="me-4 text-reset">
                <i class="fab fa-github"></i>
            </a>
        </div>
        <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
        <div class="container text-center text-md-start mt-5">
            <!-- Grid row -->
            <div class="row mt-3">
                <!-- Grid column -->
                <div class="col-12 text-center">
                    <!-- Content -->
                    <h6 class="text-uppercase fw-bold mb-4">
                        <i class="fas fa-gem me-3"></i>Olive.
                    </h6>
                    <p>
                        I Will help You Out with all Of Your grievances..
                    </p>
                </div>
            </div>
        </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div id="about" class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
        © 2022 Copyright:
        <a class="text-reset fw-bold" href="#">Olive.com</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<script>
     window.addEventListener('load',()=>{
        var voiceschanged = () => {
        speechSynthesis.getVoices().forEach(voice => {
            if (voice.name == "Microsoft Zira - English (United States)") {
                let utterance = new SpeechSynthesisUtterance("Hiii My Name Is Olive");
                utterance.voice = voice;
                speechSynthesis.speak(utterance);
            }
        })
    }
    speechSynthesis.onvoiceschanged = voiceschanged
    });
    document.querySelector('#olive').addEventListener('mouseenter', () => {
        let utterance = new SpeechSynthesisUtterance("What ?");
        utterance.voice = speechSynthesis.getVoices()[4];
        speechSynthesis.speak(utterance);
    });
    document.querySelector('#olive').addEventListener('click', () => {
        let utterance = new SpeechSynthesisUtterance("Hey ?");
        utterance.voice = speechSynthesis.getVoices()[4];
        speechSynthesis.speak(utterance);
    });
</script>
<script src="assets/js/main.js?v=<?php echo time(); ?>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/js/all.min.js"></script>
</body>

</html>