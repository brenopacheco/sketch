# shellcheck disable=all

pkgname=sketch
pkgver=0
pkgrel=0
pkgdesc='Start projects using templates'
url='https://github.com/brenopacheco/sketch'
arch=(any)
license=(MIT)
options=('!debug')
depends=('perl' 'make')
conflicts=()
provides=('sketch')
source=('git+https://github.com/brenopacheco/sketch')
# md5sums=('SKIP')

pkgver() {
	cd $pkgname && make version
}

build() {
	cd $pkgname && make build
}

package() {
	PREFIX="${pkgdir}/usr" cd $pkgname && make install
}
