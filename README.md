blimp-mailpile
==============

The Docker image extending the [basic Mailpile image](https://github.com/cloudfleet/Mailpile) with customisations for a specific user. Used to deploy as a CloudFleet [Blimp app](https://github.com/cloudfleet/blimp-specs). Since the username is only determined on the first boot, this container is started by [Conduit](https://github.com/cloudfleet/conduit/).
