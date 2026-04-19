# 🐧 Dotfiles - Mauricio Zarate

Mis configuraciones personalizadas para un entorno de Data Science y MLOps en Ubuntu.

## 🛠️ Requisitos previos (Instalación de Software)
Antes de aplicar las configuraciones, instalar los paquetes base:
```bash
sudo apt update && sudo apt install -y zsh alacritty fastfetch fzf zsh-autosuggestions zsh-syntax-highlighting unzip wget

######

🔡 Instalación de Fuentes (Nerd Fonts)
Para que los iconos de Powerlevel10k funcionen, es obligatorio instalar la fuente parcheada:

mkdir -p ~/.local/share/fonts/UbuntuMono
wget [https://github.com/ryanoasis/nerd-fonts/releases/latest/download/UbuntuMono.zip](https://github.com/ryanoasis/nerd-fonts/releases/latest/download/UbuntuMono.zip)
unzip UbuntuMono.zip -d ~/.local/share/fonts/UbuntuMono
fc-cache -fv
rm UbuntuMono.zip

######

🚀 Instalación de Oh My Zsh y Temas
Bash
# Instalar Oh My Zsh
sh -c "$(wget -O- [https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh](https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh))"

# Descargar Powerlevel10k
git clone --depth=1 [https://github.com/romkatv/powerlevel10k.git](https://github.com/romkatv/powerlevel10k.git) ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
🔗 Aplicar configuraciones (Enlaces Simbólicos)
Desde la carpeta de este repositorio:

Bash
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.p10k.zsh ~/.p10k.zsh
mkdir -p ~/.config/alacritty
ln -sf ~/dotfiles/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf ~/dotfiles/themes ~/.config/alacritty/themes

### Paso 3: ¿Qué pasa con los temas?
En el **Paso 1** de mi mensaje anterior, te pedí copiar la carpeta de temas:
`cp -r ~/.config/alacritty/themes ~/dotfiles/`

**Esto es vital.** Al hacer esto, **TODOS** los temas que tienes en la lista de tu imagen (Atelier Savanna, Aura, Desert, etc.) se subirán a GitHub. No necesitas anotarlos uno por uno; el archivo `.toml` vive dentro de la carpeta `themes` y Git los subirá todos.

---

### Verificación Final antes de subir:
Asegúrate de que tu carpeta `~/dotfiles` se vea así (puedes usar el comando `ls -a ~/dotfiles`):
* `.git` (oculto)
* `.p10k.zsh`
* `.zshrc`
* `alacritty.toml`
* `README.md`
* `themes/` (carpeta con todos tus temas .toml)

**¿Ya tienes todos estos archivos dentro de `~/dotfiles`?** Si es así, procede con los comandos de `git add .`, `git commit` y `git push` que te pasé antes. ¡Ese README te va a salvar la vida cuando reinstales!
