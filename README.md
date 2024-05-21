## Feedback Form Project

This project consists of a web-based feedback form built with HTML, CSS, and Perl. It allows users to submit their feedback, areas of improvement, and LinkedIn profiles, with the collected data being stored and viewable through a separate CGI script.

### Features

- **Feedback Form**: Users can provide their name, email, feedback, areas of improvement, and LinkedIn profile URL.
- **Data Submission**: User inputs are stored in a text file on the server.
- **Data Viewing**: Submitted feedback can be viewed in a formatted table.
- **LinkedIn Endorsement**: Users are encouraged to recommend and endorse on LinkedIn.
- **Responsive Design**: The form and additional sections are styled for a clean and responsive layout.

### Technologies Used

- **HTML**: For structuring the form and the feedback page.
- **CSS**: For styling the form and ensuring a responsive design.
- **Perl**: For handling form submissions and displaying the submitted data.

### File Structure

- **index.html**: Main page containing the feedback form.
- **form.css**: CSS file for styling the feedback form and other sections.
- **submit_data.pl**: CGI script for handling form submissions and saving data.
- **view_data.pl**: CGI script for displaying the submitted data.
- **data.txt**: File where the submitted data is stored.

### Setup Instructions

1. **Clone the Repository**:
    ```sh
    git clone https://github.com/yourusername/feedback-form-project.git
    cd feedback-form-project


2. **Ensure Perl is Installed**:
    - Verify that Perl is installed on your system. If not, install it via your package manager (e.g., `brew install perl` for Homebrew users).

3. **Configure Web Server**:
    - Place the files in the appropriate directory on your web server.
    - For example, if using Apache, ensure that the CGI scripts are in the CGI-enabled directory (`/opt/homebrew/var/www/cgi-bin`).

4. **Set Permissions**:
    - Ensure that the CGI scripts have execute permissions:
      ```sh
      chmod 755 /opt/homebrew/var/www/cgi-bin/submit_data.pl
      chmod 755 /opt/homebrew/var/www/cgi-bin/view_data.pl
      ```

5. **Access the Form**:
    - Open your web browser and navigate to the URL where the `index.html` is hosted (e.g., `http://localhost/index.html`).

### Usage

- **Submit Feedback**: Fill out the form and click "Submit" to send your feedback.
- **View Data**: Click on "View Submitted Data" to see all the feedback entries in a formatted table.
- **Explore More**: Use the links to visit the portfolio or endorse on LinkedIn.



By following these instructions, you should be able to set up and run the feedback form on your local server or any CGI-enabled web server. The project is designed to be simple and easy to use, providing a straightforward way to collect and view user feedback.
