# Rsync
Rsync is a wonderful little utility that's amazingly easy to set up on your machines. Rather than have a scripted FTP session, or some other form of file transfer script -- rsync copies only the diffs of files that have actually changed, compressed and through ssh if you want to for security. That's a mouthful

## Transfer files over ssh
- Transferencia servidor -> local:  `rsync -avz -e ssh remoteuser@remotehost:/remote/dir /this/dir/`
- Transferencia local -> servidor:  `rsync -avz -e ssh /this/dir/ remoteuser@remotehost:/remote/dir`

# References:
[Troy.jdmz](http://troy.jdmz.net/rsync/index.html)
[Rsync tutorial](http://everythinglinux.org/rsync/)
