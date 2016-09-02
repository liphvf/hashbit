# SSH

# authorized_keys:
Para você poder conectar a uma rede sem precisar colocar a senha, no servidor(host) deve ter um arquivo chamado `authorized_keys` em sua pasta `.ssh/`.

- Uma maneira pratica de copiar sua chave ssh é: `ssh-copy-id -i ~/.ssh/id_rsa.pub usuario@servidor`

## Version 1:
- `mkdir .ssh`
- `chmod 700 .ssh`
- `cd .ssh`
- `touch authorized_keys`
- `chmod 600 authorized_keys`
- `cat ../identity.pub >> authorized_keys`
- `rm ../identity.pub`

## Version 2:
- `cd .ssh`
- `touch authorized_keys2`
- `chmod 600 authorized_keys2`
- `cat ../id_dsa.pub >> authorized_keys2`
- `rm ../id_dsa.pub`

Feitas as configurações acima, de acordo com a versão do protoloco que você usa, você já pode acessar normalmente `ssh <usuario>@<ip> -p <porta>`


# Referênces:
- [sshkeychain](http://sshkeychain.sourceforge.net/mirrors/SSH-with-Keys-HOWTO/SSH-with-Keys-HOWTO-4.html)
- [Ubuntu Help](https://help.ubuntu.com/community/SSH/OpenSSH/Keys)
