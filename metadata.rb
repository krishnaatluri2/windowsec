name 'windowsec'
maintainer 'muralikrishna atluri'
maintainer_email 'muralikrishna.atluri@wowinc.com'
license 'MS-PL'
description 'Installs/Configures windowsec'
long_description 'Installs/Configures windowsec'
version '0.2.0'
chef_version '>=12.9' if respond_to?(:chef_version)
supports 'windows'
issues_url 'https://github.com/WOWINC/windowsec/issues'
source_url 'https://github.com/WOWINC/windowsec'

depends 'windows','~> 1.38.0'
depends 'datadog', '~> 2.12.0'
depends 'bbwin', '~> 1.0.1'