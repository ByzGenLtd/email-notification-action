# The email-notification-action

This project is designed to create custom email notifications via github actions.

To add this email-notification-action to your builds, just add the following in your worflow file :

## Usage

```
   - name: Send email notification
     if: github.ref == 'refs/heads/master'
     uses: byzgenltd/email-notification-action@v1
     with:
       from_email: 'xyz@gmail.com'
       to_email: 'abc@gmail.com'
       subject: '<email subject>'
       authorised_username: '<authorised username>'
       authorised_password: '<authorised_password>'
       message: '<email message body>'
```