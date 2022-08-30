var w = document.querySelector('.messages');
window.scrollTo(0, w.scrollTop = w.scrollHeight);
let msg_submit = (e) => {
    let user_text = document.getElementById('main_inp').value;
    var data = new FormData();
    data.append('chat', user_text);
    data.append('u_id', 673);
    var http = new XMLHttpRequest();
    var url = 'inits/manage_chat.php';
    http.open('POST', url, true);
    http.onreadystatechange = function () {
        if (http.readyState == 4 && http.status == 200) {
            e.reset();
            // inserting user msg
            if (http.response != "failed") {
                if (http.response == "sorry") {
                    const q_text = "Ohh ! You Got A Problem.. I am Helping You With That.. You Can Raise Your Query and It Will Be Solved Very Soon.";
                    let utterance = new SpeechSynthesisUtterance(q_text);
                    utterance.voice = speechSynthesis.getVoices()[4];
                    speechSynthesis.speak(utterance);
                    w.innerHTML += `<div class="user-msg msg-card">
                        <p>${user_text}
                            <span><?php echo date("g:i A"); ?></span>
                        </p>
                        <img src="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                    </div>`
                    w.innerHTML += `<div class="bot-msg msg-card">
                        <img src="assets/images/p2.jpg" alt="">
                        <p>${q_text}
                            <span><?php echo date("g:i A"); ?></span>
                        </p>
                    </div>
                    <div id="ticketbox">
                    <form class="" method="POST" action="inits/raise_query.php?u_id=<?php echo $_SESSION['u_id'] ?>">
                                    <textarea placeholder="Please Describe Your Problem Here" class="border" name="q_que" rows="5"></textarea>
                                    <button class="btn btn-sm btn-success mt-1" type="submit" style="text-decoration: none;">Raise A Ticket</button>
                                    </form>
                    </div>
                    `;
                    window.scrollTo(0, w.scrollTop = w.scrollHeight);
                } else if (http.response == "result") {
                    const q_text = "Ohh I Got It.. This Is Your Result..";
                    let utterance = new SpeechSynthesisUtterance(q_text);
                    utterance.voice = speechSynthesis.getVoices()[4];
                    speechSynthesis.speak(utterance);
                    w.innerHTML += `<div class="user-msg msg-card">
                        <p>${user_text}
                            <span><?php echo date("g:i A"); ?></span>
                        </p>
                        <img src="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                    </div>`
                    w.innerHTML += `<div class="bot-msg msg-card">
                        <img src="assets/images/p2.jpg" alt="">
                        <p>${q_text}
                            <span><?php echo date("g:i A"); ?></span>
                        </p>
                    </div>
                    <img id="marks" src="assets/images/sem-1-marksheet.jpg">
                    `
                    window.scrollTo(0, w.scrollTop = w.scrollHeight);
                } else {
                    let utterance = new SpeechSynthesisUtterance(http.response);
                    utterance.voice = speechSynthesis.getVoices()[4];
                    speechSynthesis.speak(utterance);
                    w.innerHTML += `<div class="user-msg msg-card">
                        <p>${user_text}
                            <span><?php echo date("g:i A"); ?></span>
                        </p>
                        <img src="https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500" alt="">
                    </div>`
                    w.innerHTML += `<div class="bot-msg msg-card">
                        <img src="assets/images/p2.jpg" alt="">
                        <p>${http.response}
                            <span><?php echo date("g:i A"); ?></span>
                        </p>
                    </div>
                    `;
                    window.scrollTo(0, w.scrollTop = w.scrollHeight);
                }
            }
        }
    }
    http.send(data);

}