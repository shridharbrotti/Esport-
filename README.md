# E-SPORTS MANAGEMENT SYSTEM 

#PROJECT STRUCTURE
esports_notifier/
│
├── index.html
├── register.html
├── dashboard.php
├── login.php
├── db.php
├── add_event.php
├── view_events.php
├── style.css


1. DATABASE (MySQL)
  CREATE DATABASE esports;

USE esports;

CREATE TABLE login (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50),
    utype VARCHAR(10)
);

CREATE TABLE events (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100),
    game VARCHAR(50),
    event_date DATE
);


2. DATABASE CONNECTION (db.php)
   <?php
$conn = mysqli_connect("localhost", "root", "", "esports");

if (!$conn) {
    die("Connection Failed: " . mysqli_connect_error());
}
?>


3. LOGIN SYSTEM (login.php)
   <?php
session_start();
include 'db.php';

$email = $_POST['email'];
$password = $_POST['password'];

$query = "SELECT * FROM login WHERE email='$email' AND password='$password'";
$result = mysqli_query($conn, $query);

if (mysqli_num_rows($result) > 0) {
    $row = mysqli_fetch_assoc($result);
    
    $_SESSION['user'] = $row['username'];
    $_SESSION['type'] = $row['utype'];

    if ($row['utype'] == 'admin') {
        header("Location: dashboard.php");
    } else {
        header("Location: dashboard.php");
    }
} else {
    echo "<script>alert('Invalid Login'); window.location='index.html';</script>";
}
?>


4. REGISTRATION (register.html)
   <!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
<form action="register.php" method="POST">
    <input type="text" name="username" placeholder="Username" required><br>
    <input type="email" name="email" placeholder="Email" required><br>
    <input type="password" name="password" placeholder="Password" required><br>

    <select name="utype">
        <option value="user">Student</option>
        <option value="admin">Admin</option>
    </select><br>

    <button type="submit">Register</button>
</form>
</body>
</html>

4.1 register.php
  <?php
include 'db.php';

$username = $_POST['username'];
$email = $_POST['email'];
$password = $_POST['password'];
$utype = $_POST['utype'];

$query = "INSERT INTO login(username,email,password,utype)
VALUES('$username','$email','$password','$utype')";

mysqli_query($conn, $query);

echo "<script>alert('Registered Successfully'); window.location='index.html';</script>";
?>

5. LOGIN PAGE (index.html)
   <!DOCTYPE html>
<html>
<head>
    <title>E-Sports Notifier</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<h1>E-Sports Notifier</h1>

<form action="login.php" method="POST">
    <input type="email" name="email" placeholder="Email"><br>
    <input type="password" name="password" placeholder="Password"><br>
    <button type="submit">Login</button>
</form>

<a href="register.html">New User? Register</a>

</body>
</html>

6. DASHBOARD (dashboard.php)
   <?php
session_start();
if (!isset($_SESSION['user'])) {
    header("Location: index.html");
}
?>

<h2>Welcome <?php echo $_SESSION['user']; ?></h2>

<a href="add_event.php">Add Event</a> |
<a href="view_events.php">View Events</a> |
<a href="logout.php">Logout</a>


7. ADD EVENT (add_event.php)
  <?php include 'db.php'; ?>

<form method="POST">
    <input type="text" name="title" placeholder="Event Title"><br>
    <input type="text" name="game" placeholder="Game"><br>
    <input type="date" name="date"><br>
    <button type="submit" name="add">Add Event</button>
</form>

<?php
if (isset($_POST['add'])) {
    $title = $_POST['title'];
    $game = $_POST['game'];
    $date = $_POST['date'];

    mysqli_query($conn, "INSERT INTO events(title,game,event_date)
    VALUES('$title','$game','$date')");

    echo "Event Added!";
}
?>

8. VIEW EVENTS (view_events.php)
   <?php include 'db.php'; ?>

<h2>Upcoming Events</h2>

<table border="1">
<tr>
    <th>Title</th>
    <th>Game</th>
    <th>Date</th>
</tr>

<?php
$res = mysqli_query($conn, "SELECT * FROM events");

while ($row = mysqli_fetch_assoc($res)) {
?>
<tr>
    <td><?php echo $row['title']; ?></td>
    <td><?php echo $row['game']; ?></td>
    <td><?php echo $row['event_date']; ?></td>
</tr>
<?php } ?>
</table>


9. STYLE (style.css)
    body {
    font-family: Arial;
    text-align: center;
    background: #111;
    color: white;
}

input, select {
    padding: 8px;
    margin: 5px;
}

button {
    padding: 8px;
    background: cyan;
}
