
class packages{

    include test::packages::base_packages.pp
    include test::packages::go_packages.pp
    include test::packages::java_packages.pp
    include test::packages::node_packages.pp
    include test::packages::php_packages.pp
    include test::packages::python_packages.pp
    include test::packages::ruby_packages.pp

}