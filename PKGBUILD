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
# source=('git+https://github.com/brenopacheco/sketch')
# md5sums=('SKIP')

pkgver() {
	cd .. && make version
	# cd $pkgname && make version
}

build() {
	cd .. && make build
	# cd $pkgname && make build
}

package() {
	cd .. && DESTDIR="$pkgdir" make install
	# cd $pkgname && DESTDIR="$pkgdir" make install
}
