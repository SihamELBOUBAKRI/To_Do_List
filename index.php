<?php
session_start();
$tasks = isset($_SESSION['text']) ? $_SESSION['text'] : [];
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css"></link>

    
</head>
<body>
    <form id="post" action="php.php" method="post">
        <textarea name="text" id="text" cols="30" rows="10"></textarea>
        <button id="btn">Ajouter</button>
    </form>
    <table border="1">
        <theader>
            <th>Date</th>
            <th>content</th>
            <th>Update</th>
            <th>Delete</th>
        </theader>
        <tbody id="tbody">
        <?php foreach ($tasks as $task): ?>
                <tr>
                    <td><?php echo htmlspecialchars($task['date']); ?></td>
                    <td><?php echo htmlspecialchars($task['text']); ?></td>
                    <td>
                        <form class="form" action="php.php">
                            <button type="button" class="upd" data-text="<?php echo htmlspecialchars($task['text']); ?>">Update</button>
                            <div class="updateF" style="display: none;">
                                <input class='tex' type="text" name="up" value="<?php echo htmlspecialchars($task['text']); ?>">
                                <input type="hidden" name="upd" value="<?php echo $task['id']; ?>" >
                                <button type="submit" name="save" class="save">Save</button>
                                <button type="button" class="cancel">Cancel</button>
                            </div>
                        </form>
                    </td>
                    <td>
                        <form action="php.php">
                            <input type="hidden" name="del" value="<?php echo $task['id']; ?>" >
                            <button name="delete" id="delete">Delete</button>
                        </form>
                    </td>
                     
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <script src="jquery.js"></script>   
    <script launguage="javascript" src="main.js"></script>
</body>
</html>




























