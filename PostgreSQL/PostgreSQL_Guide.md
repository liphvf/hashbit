# Instalation
Ferramentas Utils:
- [PgModeler](http://pgmodeler.com.br/)

Instalar: `$ pacman -S postgresql pgadmin3` Iniciar junto com o linux: `sudo systemctl enable postgresql`

**ATENÇÃO, USE ESSE COMANDO ANTES** `sudo -i -u postgres`

`initdb --locale pt_BR.UTF-8 -E UTF8 -D /var/lib/postgresql/data`

No caso de locale está dando errado, verifique os locales do seu sistema: `locale -a`, caso não esteja cadastrado. modifique o arquivo /etc/locale.gen e rode o comando `sudo locale-gen`. Com isso essa localidade será adicionado ao seu sistema.

**inicia um cluster db com:**
- `--locale` --> localização
- `-E` --> encoding
- `-D` --> directory

**Você pode iniciar o servidor de banco de dados utilizando:**

No arch linux: `sudo systemctl start postgresql`

**Após instalação ele fala para iniciar assim:**

`postgres -D /var/lib/postgres/data` ou `pg_ctl -D /var/lib/postgres/data -l logfile start`

# Comandos
- Entra no shell do banco --> `psql [nome do banco]` se não colocar o banco ele entra no banco com mesmo nome de usuário.

**In users**

| Command                  | Fuction          |
|:-------------------------|:-----------------|
| createdb [name]          | create data base |
| createuser --interactive | create a user    |

**In psql**

| Command      | Fuction                                                            |
|:-------------|:-------------------------------------------------------------------|
| \c           | databaseName connect to a particular database                      |
| \du          | list all users and their permission levels                         |
| \dt          | shows summary information about all tables in the current database |
| \q           | exit/quit the psql shell                                           |
| \? and \help | helpers                                                            |

# Importar .SQL File or Export(DUMP) .SQL
- **Single Base**: `psql dbname < inputfile` or in psql`\i inputfile.sql`
- **Multiple Bases**: `psql -f inputfile postgres`

## Export(DUMP)
- **Single Base**: `pg_dump dbname > outfile`
- **Multiple Bases**: `pg_dumpall > outfile`

(Actually, you can specify any existing database name to start from, but if you are loading into an empty cluster then postgres should usually be used.) It is always necessary to have database superuser access when restoring a pg_dumpall dump, as that is required to restore the role and tablespace information. If you use tablespaces, make sure that the tablespace paths in the dump are appropriate for the new installation.

pg_dumpall works by emitting commands to re-create roles, tablespaces, and empty databases, then invoking pg_dump for each database. This means that while each database will be internally consistent, the snapshots of different databases might not be exactly in-sync.

Use pg_dump's custom dump format. If PostgreSQL was built on a system with the zlib compression library installed, the custom dump format will compress data as it writes it to the output file. This will produce dump file sizes similar to using gzip, but it has the added advantage that tables can be restored selectively. The following command dumps a database using the custom dump format:
- `pg_dump -Fc dbname > filename`

A custom-format dump is not a script for psql, but instead must be restored with pg_restore, for example:
- `pg_restore -d dbname filename`

**ANOTAR DEPOIS**

para mudar a senha de um usuário no postgres:

\password test_user

[https://www.digitalocean.com/community/tutorials/how-to-use-roles-and-manage-grant-permissions-in-postgresql-on-a-vps--2](https://www.digitalocean.com/community/tutorials/how-to-use-roles-and-manage-grant-permissions-in-postgresql-on-a-vps--2)

ALTER ROLE genomiak WITH PASSWORD ''

# Usar psql remotamento
- `psql -h <ip> -U <user> -d <database>`

# Usar o postgres fora do seu localhost(PgAdmin)
- No arquivo pg_hba.conf adicione alinha: `host    all             all             0.0.0.0/0               md5`
- No arquivo postgresql.conf, descomente a linha e troque o valor: `listen_addresses = '*'`

Onde estão esses arquivos?
- sudo find /etc/ -name pg_hba.conf
- sudo find /etc/ -name postgresql.conf,
