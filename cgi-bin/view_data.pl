#!/usr/bin/perl
use strict;
use warnings;

open my $fh, '<', '/opt/homebrew/var/www/cgi-bin/data.txt' or die "Could not open file: $!";

my @data = <$fh>;
close $fh;

print "Content-type: text/html\n\n";
print <<HTML;
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>View Submitted Data</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }
        tr:nth-child(even) {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <h1>Submitted Feedback Data</h1>
    <table>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Feedback</th>
            <th>Areas of Improvement</th>
            <th>LinkedIn Profile</th>
        </tr>
HTML

foreach my $line (@data) {
    chomp $line;
    next if $line =~ /^\s*$/;  
    my ($name, $email, $feedback, $improvements, $linkedin) = split /,/, $line;
    print "<tr><td>$name</td><td>$email</td><td>$feedback</td><td>$improvements</td><td><a href=\"$linkedin\" target=\"_blank\">$linkedin</a></td></tr>\n";
}

print <<HTML;
    </table>
    <br>
    <a href="/index.html">Back to Feedback Form</a>
</body>
</html>
HTML
