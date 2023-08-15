## FiveM Whitelist Script

This script adds a whitelist system to your FiveM server, allowing you to control access based on specific identifiers such as Steam, Discord, and more.

### Features

- Whitelist players using Steam IDs, Discord IDs, license keys, Xbox Live IDs, and more.
- Prevents unauthorized players from joining your server.
- Easy-to-configure identifier whitelist using the `WhiteList` table.

### Installation

1. Place the script in your FiveM resources folder.
2. Configure the `WhiteList` table with valid whitelisted identifiers for each category.

### Configuration

Edit the `WhiteList` table in the script to include the identifiers you want to whitelist. For example:

```lua
local WhiteList = {
    discord = {
        "discord:1234567890",
        "discord:9876543210",
    },
    steam = {
        "steam:1234567890",
        "steam:9876543210",
    },
    -- Add more identifier categories here
}
```

### Usage

When players attempt to connect to the server, the script will check their identifiers against the whitelist. If their identifiers match any whitelisted identifier, they'll be granted access. Otherwise, they'll be denied access.

### Disclaimer

Make sure to keep your whitelisted identifiers secure and up-to-date to prevent unauthorized access.

### Author

MaskeZen
