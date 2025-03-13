# shellcheck disable=all

pkgname=sketch
pkgver=0.0.1
pkgrel=1
pkgdesc='Start projects using templates'
url='https://github.com/brenopacheco/sketch'
arch=(any)
license=(MIT)
options=('!debug')
depends=('perl' 'make')
conflicts=()
provides=('sketch')
source=('git+https://github.com/brenopacheco/sketch')
md5sums=('SKIP')

pkgver() {
	cd $pkgname && make version
}

build() {
	cd $pkgname && make build
}

package() {
	cd $pkgname && DESTDIR="$pkgdir" make install
}
