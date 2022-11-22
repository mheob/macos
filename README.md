# Mac Installation helper

Use at your own risk!

TODO

---

## Enabling touch ID for access on Terminal

Simple way to allow Mac Touch ID authentication in Command prompt.

Mac pro have fingerprint scanner (Touch ID) to simplify login process but this is not exposed in terminal. So each time you run commands with elevated privileges you need to type in your password. Following simple change would allow you to use Touch ID for authentication in Command prompt.

To use MacOS Touch ID in Terminal for sudo access instead of entering system password.

Edit this file `/etc/pam.d/sudo` with your favorite editor.

```sh
sudo vim /etc/pam.d/sudo
```

Add the following line to the top of the file.

```sh
auth sufficient pam_tid.so
```

### Iterm2

To enable Touch ID access on Iterm2. You need to do the following.
Go to Preferences -> Advanced -> Allow sessions to survive logging out and back in and set value to no.

Restart Iterm2 and voilà touch ID authentication will work on Iterm2.

## Special Thanks

Thanks to [josean-dev](https://github.com/josean-dev) for the insppiration of the nvim config.
