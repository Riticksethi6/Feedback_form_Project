#!/usr/bin/perl
use strict;
use warnings;
use CGI;

my $cgi = CGI->new;
print $cgi->header();


my $name = $cgi->param('name') // '';
my $email = $cgi->param('email') // '';
my $feedback = $cgi->param('feedback') // '';
my $improvements = $cgi->param('improvements') // '';
my $linkedin = $cgi->param('linkedin') // '';

open my $fh, '>>', '/opt/homebrew/var/www/cgi-bin/data.txt' or die "Could not open file: $!";

if ($name ne '' && $email ne '' && $feedback ne '') {
    print $fh "$name,$email,$feedback,$improvements,$linkedin\n";
}

close $fh;

print <<HTML;
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Feedback Submitted</title>
</head>
<body>
    <h1>Thank You for Your Feedback!</h1>
    <p>Name: $name</p>
    <p>Email: $email</p>
    <p>Feedback: $feedback</p>
    <p>Areas of Improvement: $improvements</p>
    <p>LinkedIn Profile: $linkedin</p>
    <br>
    <a href="/index.html">Back to Feedback Form</a>
</body>
</html>
HTML
