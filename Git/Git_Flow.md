# Git Flow
O Git Flow é um conceito de fluxo git.
- [Post Original](http://nvie.com/posts/a-successful-git-branching-model/)
- [git-flow-cheatsheet](http://danielkummer.github.io/git-flow-cheatsheet/index.pt_BR.html)
- [Introdução ao Git Flow Vídeo](https://vimeo.com/16018419)
- [Tutorial git flow pela Atlassian](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
- [Git Lab Git Flow](https://about.gitlab.com/2014/09/29/gitlab-flow/)
- [Github git-flow fork](https://github.com/petervanderdoes/gitflow)
- [Git GUIs](https://git-scm.com/downloads/guis)
- [Scalable Git branching](http://buildamodule.com/video/change-management-and-version-control-deploying-releases-features-and-fixes-with-git-how-to-use-a-scalable-git-branching-model-called-gitflow)
- [Erros](http://stackoverflow.com/questions/30372896/why-is-git-flow-feature-checkout-being-deprecated-what-should-i-be-using-instea)

**Após finilizar uma relese, você tem que dar um push na tag criada:**
- The following command should push tags: `git push --tags`
- or if you are looking to push a single tag: `git push origin <tag_name>`

# Problema com Branchs:
Caso queira deletar uma branch remota:
- `git branch -d nome_da_branch`
- `git push origin :nome_da_branch` : nesse caso ele irá deletar a branch remota

![git-flow-nvie.png](Files/git-flow-nvie.png)

# Problema de commit errado
Caso tenha commitado errado, e ja tenha dado um push no remoto.

- Primeiro vamos desfazer as alterações feitas com o `git revert <commit>` (para ver o commit use o comando `git log`)
- Depois mande o revert commit para o remoto, `git push origen <branch>`
- Lembre de que qual quer brench que foi feita apartir do seu erro está desatualizada, então mude para essa branch `git checkout <branch>` e depois merge `git merge <branch>`
- Para ter certeza que ele foi atualizado olhe o git log. você deverá achar o revert commit.

# Files for Download

[Github Git Cheat Sheet](Files/github-git-cheat-sheet.pdf)
