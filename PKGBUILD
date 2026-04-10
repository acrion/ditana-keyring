# Maintainer: Stefan Zipproth <s.zipproth@ditana.org>

pkgname=ditana-keyring
pkgver=20250410
pkgrel=1
pkgdesc='Ditana GNU/Linux PGP keyring'
arch=('any')
url='https://ditana.org'
license=('GPL-3.0-or-later')
install=ditana-keyring.install
source=('ditana.gpg' 'ditana-trusted')
sha256sums=('SKIP' 'SKIP')

package() {
    install -Dm644 "${srcdir}/ditana.gpg" "${pkgdir}/usr/share/pacman/keyrings/ditana.gpg"
    install -Dm644 "${srcdir}/ditana-trusted" "${pkgdir}/usr/share/pacman/keyrings/ditana-trusted"
}
