#!/usr/bin/perl
use CGI;

# Create a CGI object to handle form input
my $cgi = CGI->new;

# Get form input data
my $name = $cgi->param('full_name');
my $email = $cgi->param('email');
my $phone = $cgi->param('phone');
my $course = $cgi->param('course');
my $start_date = $cgi->param('start_date');
my $comments = $cgi->param('comments');

# Start printing the HTML document
print $cgi->header('text/html');
print <<EOSTUFF;
<html>
<head>
    <title>Course Registration Confirmation</title>
</head>
<body>
    <h1>Registration Confirmation</h1>
    <p><strong>Full Name:</strong> $name</p>
    <p><strong>Email:</strong> $email</p>
    <p><strong>Phone Number:</strong> $phone</p>
    <p><strong>Selected Course:</strong> $course</p>
    <p><strong>Preferred Start Date:</strong> $start_date</p>
    <p><strong>Comments:</strong> $comments</p>
</body>
</html>
EOSTUFF
