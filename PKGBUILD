# Maintainer: Stefan Zipproth <s.zipproth@ditana.org>

pkgname=ditana-keyring
pkgver=20250409
pkgrel=1
pkgdesc='Ditana GNU/Linux PGP keyring'
arch=('any')
url='https://ditana.org'
license=('GPL-3.0-or-later')
install=ditana-keyring.install

_keyid='3F8054C3FF755E5544E68516BC333E9AE877D45A'

prepare() {
    gpg --export --armor "$_keyid" > "${srcdir}/ditana.gpg"
}

package() {
    install -Dm644 "${srcdir}/ditana.gpg" "${pkgdir}/usr/share/pacman/keyrings/ditana.gpg"
    install -Dm644 "${startdir}/ditana-trusted" "${pkgdir}/usr/share/pacman/keyrings/ditana-trusted"
}
