class base_packages{

    $apache = $osfamily ? {
        'RedHat'    => 'httpd',
        'Debian'    => 'apache2',
        default     => undef;
    }

    $docker = $osfamily ? {
        'RedHat'    => 'docker-engine',
        'Debian'    => 'docker-engine',
        default     => undef;
    }

    $basePackages   = ['python', 'httpd', 'gcc-c++', 'ruby-devel', 'gcc', 'make', 'rpm-build', $docker, $apache ]

    package { $basePackages :
        ensure      => 'installed',
        require     => Labrat::Exec['yum update']
    }
}

