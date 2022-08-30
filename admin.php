<?php require "admin_header.php" ?>
<!-- .Header -->
<!-- Wrapper Section Starts Here -->
<div class="chatsection container-fluid">
    <div class="row d-flex">
        <div id="aside" class="col col-md-3 mt-3 sidebar">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Queries</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="logout.php">Sign out</a>
                </li>
            </ul>
        </div>
        <div class="col col-md-9 col-sm-12 chatbx">
            <div id="querybox" class="messages">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Reg No</th>
                            <th scope="col">Queries</th>
                            <th scope="col">Status</th>
                            <th scope="col">FeedBack</th>
                            <th scope="col">Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $sql = "SELECT * FROM `queries` ORDER BY 'q_time' ASC";
                        $res = mysqli_query($conn, $sql);
                        while ($row = mysqli_fetch_assoc($res)) {
                            $updated_time = date("Y/m/d", strtotime($row["q_time"]));
                        ?>
                            <tr>
                                <td><?php echo $row["u_id"] ?></td>
                                <td><?php echo $row["q_que"] ?></td>
                                <td>
                                    <label class="switch">
                                        <input disabled <?php if ($row["q_status"] == 1) {
                                                            echo "checked";
                                                        } ?> type="checkbox">
                                        <span class="slider round"></span>
                                    </label>
                                </td>
                                <td>
                                <form class="d-flex align-items-start" method="POST" action="inits/manage_query.php?q_id=<?php echo $row['q_id'] ?>&u_id=<?php echo $row['u_id'] ?>">
                                    <textarea class="border" name="q_ans" cols="25" rows="3"></textarea>
                                    <button class="btn btn-sm btn-success mt-1" type="submit" style="text-decoration: none;">Respond</button>
                                    </form>
                                </td>
                                <td><?php echo $updated_time ?></td>
                            </tr>
                        <?php }; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<!-- .Wrapper -->

<script src=" https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
                                            <script src="assets/js/main.js?v=<?php echo time(); ?>"></script>
                                            <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/js/all.min.js"></script>
                                            </script>
                                            </body>

                                            </html>