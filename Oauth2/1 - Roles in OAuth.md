# OAuth 2

## Roles in OAuth

User using some DEVICE to access a CLIENT, that CLIENT get the user to login into some AUTHORIZATION SERVER by directing their browser there. Then the client can go and use its access token at the RESOURCE SERVER.

- The User - Resource owner
- The Device - The agent
- The Application - Client
- Authorization server
- The API - Resource Server

## Application Types

OAuth2 defines two client types, PUBLIC and CONFIDENTIALS. These are based on the clients ability to be deployed with a client secret or some sort of credentials that it can then be used as authentication during the OAuth exhange:

Confidential clients have the ability to be deployed with a client secret where that secret won't be visible to anybody using the app. This is a pretty normal thing for APPs in a server side. But if you're writing a mobile app or a single page app, then you don't have the ability to include secrets in the app, because users of the app would be able to see the secrets. E.g.: Users in a SPA can always inspect the page and see its source code and find the secrets, it could do the same in a mobile app.

In summary, you can't include a secret in a application running in a users device.

In OAuth, the application will be communicating with the AUTHORIZATION SERVER, and if the app has credentials, then the app can use those to authenticate the requests that it makes. That means that the oauth server will know that only the real app can make requests if it includes the app credentials.
