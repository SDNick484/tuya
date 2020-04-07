# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6
PYTHON_COMPAT=( python3_{6,7} )

inherit git-r3 distutils-r1

DESCRIPTION="Re-implementation of pytuya"
HOMEPAGE="https://github.com/TradeFace/tuya"
EGIT_REPO_URI="https://github.com/SDNick484/${PN}.git"
#SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"


LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""
#KEYWORDS="~arm64 ~x86"
IUSE=""

S="${WORKDIR}/tuya-9999"

PATCHES=(

)

DEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"
RDEPEND="
	|| (
		dev-python/pycryptodome[${PYTHON_USEDEP}]
		dev-python/pycrypto[${PYTHON_USEDEP}]
	)
	dev-python/bitarray
	dev-python/bitstring
"
