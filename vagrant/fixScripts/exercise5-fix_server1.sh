#!/bin/bash
echo '   StrictHostKeyChecking no
   UserKnownHostsFile=/dev/null
   LogLevel ERROR' | sudo tee -a /etc/ssh/ssh_config
echo '-----BEGIN RSA PRIVATE KEY-----
MIIEpAIBAAKCAQEA4qTnSk7LPXUmwVjFFqPxt2URGKsvp086fHDaA8nPJ6oDRjAx
zcpiliAfgjzZCsZp7qZA3pUn5vZwdr/ShP2KV9WyD9+h0vtEt+TkiAW8GEQSZ+Mh
AlnXVcp01yCF/IKA00Nhg2krZb2UufQ/Klo8zAbenFYPokREVJW+Dc9FMAQMr9zr
0EnPnqHS9/rvgkECprBVj6DwwL2ZpOFnNynkHKX8j6lH1BtD0hHW5BTSTKVUN3oK
wirfA/JgIWksgVFePBfitbCMBbEkZHktAy8Gtn4f0KcmNFwdFXknsbSONSP6c1td
zUOML1RB4XYFfjHOD0zYm9t/DaKTn97FqBzXzQIDAQABAoIBAFtP3O+PN0sXe/nB
7gXlH2moCm9J6PUbcpDYVr3X/OIaGR+aIzaqJ3YckxVBtqAkuGEyEkibB2yCNWVi
e0qha69fpVHH48bA/TqpuXkj9lhAdLnuREpSL/Ockd5qeBD38zcqmor7QETJULZq
tVg26u+4hM+vzLSvlGgPvHaL33AsL2CW8CsfgWzwi2RhH2PYrtZluW63DPidR9Ll
dRArHeOV6jaedKchkwqVMebOXZlpzqR7QARRY8Gcu9bBpFhNdob6+s+KvnnPwtHS
/xhgM4q+NUlJbE0Re0pZusWpWP5PSn5IAO3y2LbYeB5WUwzbvFtU6VcyWAhlTi1V
7JhogAECgYEA9SgZzgKEqKOgwVs35JgHtt1SFBVfHETf3D7OWNeFTb7fVA6m3Ii9
thPWBknvEWV9KNzqckH7xbsAtWVloF86dXWpu7k8SYB1I7O3KCxsy0atuJcXpdG3
fF71hKq5stsvOfn7N1ThwCqkHb8I1mGKomgO1Bg/5LLCBrNTUrqMr80CgYEA7Ksv
vMo+fu8KS7Lmw1pNl397p3hQOJ9KhORCNygRCmomPQipk5y/TVMdj2jaW317UUKn
Ia1GGITbgiJ2KCxPdvwDLJXIeYv19M7L3FFa/sq9q9XJdxefFBdN38QKf8BqVMLh
zmCcXuh7aF0UeeQ8qdH3vPXS6d7M8M0Dk60YyAECgYEAz4CcrtlEzbSJyX9bBLqF
tQsJgQRB15yYWkQyxdHN++s1/mDUbU+0O5v4iKQlnPTpBiBOtF0TLN7Gj8L+TMqt
oWPxQXpdA92dyJVBztgjUb9GJTqGAo1KoBOD/kG/IhsRkyH6t2+6ELxG4wKiCUrQ
W/x1qKHJ2tpPDfrU6O4LTHUCgYAqeLoTZjP68Yjmds+ExULhaiZVsnirAKMN4Cyl
21HbjZsZHuHXtKx8AutuHgH5ozYrKgv2NjM7GTSPUQHlSbZlAurK6IJWlbBo42eg
PRVYXifVm4MRFTMeFuSJwJOlw3ERjvuY3quROKVU4EdZbIUacKzFw1O7VpluqUv4
B3tIAQKBgQDfWNXyOHneV06Ud8ZaEv9rZkXXo1itEsbmGP/zB5eF926+Upl/7cBd
tHZ61t3cKmxRewaE7pynBnSIl99sDImMK8EAAOATJYt4TMQ8TXzgVvgZcNqXUdVj
YnTjVDnEPzvjv05eOa0J0LKPJTaoGTJ+X/ivVetdgyGo/NkF2ow1fg==
-----END RSA PRIVATE KEY-----' > ~/.ssh/id_rsa && chmod 600 ~/.ssh/id_rsa 