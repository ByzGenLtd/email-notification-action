# The email-notification-action

This project is designed to create custom email notifications via github actions.

To add this email-notification-action to your builds, just add the following in your worflow file :

## Usage

```
   - name: Send email notification
     if: github.ref == 'refs/heads/master' && always()
     uses: byzgenltd/email-notification-action@v1
     with:
       from_email: '<sender's email address>'
       to_email: '<receiver's email address>'
       subject: ${{ github.event.head_commit.message }}
       authorised_username: '<authorised username>'
       authorised_password: '<authorised_password>'
       job_status: ${{ job.status }}
```