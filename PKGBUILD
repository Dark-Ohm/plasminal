# Maintainer: DarkOhmLabs <dohm.labs@proton.me>

pkgname=plasminal
pkgver=1.0.0
pkgrel=1
pkgdesc="Desktop widget with embedded terminal for KDE Plasma 6"
url="https://github.com/DarkOhmLabs/plasminal"
license=('GPL-2.0-or-later')
arch=('any')
depends=(
    'plasma-workspace>=6.0'
    'libplasma>=6.0'
    'kirigami>=6.0'
    'kcmutils>=6.0'
    'qmltermwidget'
    'qt6-declarative>=6.0'
)
makedepends=()
optdepends=(
    'konsole: for additional color schemes and profiles'
    'noto-fonts-emoji: for emoji support in terminal'
)
conflicts=()
provides=()
source=("$pkgname-$pkgver.tar.gz::https://github.com/DarkOhmLabs/plasminal/releases/download/v$pkgver/$pkgname-$pkgver.tar.gz")
sha256sums=('783f65f36a8587daac28d42c455e49f7156fe9375c4b3c2d6101a980353e0367')

package() {
    cd "$srcdir/$pkgname-$pkgver"

    install -Dm644 metadata.json "$pkgdir/usr/share/plasma/plasmoids/plasminal/metadata.json"
    install -Dm644 contents/config/main.xml "$pkgdir/usr/share/plasma/plasmoids/plasminal/contents/config/main.xml"
    install -Dm644 contents/ui/main.qml "$pkgdir/usr/share/plasma/plasmoids/plasminal/contents/ui/main.qml"
    install -Dm644 contents/ui/config/ConfigGeneral.qml "$pkgdir/usr/share/plasma/plasmoids/plasminal/contents/ui/config/ConfigGeneral.qml"
    install -Dm644 contents/images/icon.svg "$pkgdir/usr/share/plasma/plasmoids/plasminal/contents/images/icon.svg"
}
