<?php require "header.php" ?>
<!-- .Header -->
<!-- Wrapper Section Starts Here -->
<div class="chatsection container-fluid">
    <div class="row d-flex">
        <div id="aside" class="col col-md-3 mt-3 sidebar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Speak</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="queries.php">Queries</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logout.php">Sign out</a>
                </li>
            </ul>
        </div>
        <div class="col col-md-9 col-sm-12 chatbx">
            <div class="messages">
                <?php
                $sql = "SELECT * FROM `discussion` ORDER BY 'time' DESC";
                $res = mysqli_query($conn, $sql);
                while ($row = mysqli_fetch_assoc($res)) {
                    $updated_time = date("g:i A", strtotime($row["time"]));
                    if ($row["type"] == 'user') {
                        echo '   <div class="user-msg msg-card">
                        <p>' . $row["chats"] . '
                            <span>' . $updated_time . '</span>
                        </p>
                        <img src="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                    </div>';
                    } else {
                        echo '   <div class="bot-msg msg-card">
                        <img src="assets/images/p2.jpg" alt="">
                        <p>' . $row["chats"] . '
                            <span>' . $updated_time . '</span>
                        </p>
                    </div>';
                    }
                };
                ?>
            </div>
            <div class="msgbx d-flex justify-content-between">
                <form method="POST" action="javascript:void(0)" onsubmit="msg_submit(this)">
                    <input id="main_inp" type="text" placeholder="Type Your Message" name="chat">
                    <button type="submit"><i class="bi bi-box-arrow-right"></i></button>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- .Wrapper -->
<script src="olive.js?v=<?php echo time(); ?>"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/main.js?v=<?php echo time(); ?>"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/js/all.min.js"></script>
<script>
    window.addEventListener('load', () => {
        var voiceschanged = () => {
            speechSynthesis.getVoices().forEach(voice => {
                if (voice.name == "Microsoft Zira - English (United States)") {
                    let utterance = new SpeechSynthesisUtterance("Hello <?php echo $_SESSION['u_name'] ?>");
                    utterance.voice = voice;
                    speechSynthesis.speak(utterance);
                }
            })
        }
        speechSynthesis.onvoiceschanged = voiceschanged
    });
</script>
</body>

</html>