# == Class: crypto_win
class crypto_win (

  $event_logging_level      = 3,
  $multi_client             = false,
  $multi_server             = false,
  $tls_1_0_client           = false,
  $tls_1_0_server           = false,
  $tls_1_1_client           = false,
  $tls_1_1_server           = false,
  $tls_1_2_client           = true,
  $tls_1_2_server           = true,
  $ssl_2_0_client           = false,
  $ssl_2_0_server           = false,
  $ssl_3_0_client           = false,
  $ssl_3_0_server           = false,
  $pct_1_0_client           = false,
  $pct_1_0_server           = false,
  $md5                      = false,
  $sha                      = false,
  $sha256                   = true,
  $sha384                   = true,
  $sha512                   = true,
  $pkcs                     = true,
  $ecdh                     = true,
  $diffie_hellman           = true,
  $aes_128_128              = true,
  $aes_256_256              = true,
  $rc2_40_128               = false,
  $rc2_56_128               = false,
  $rc2_128_128              = false,
  $rc4_40_128               = false,
  $rc4_56_128               = false,
  $rc4_64_128               = false,
  $rc4_128_128              = false,
  $des_56_56                = false,
  $threedes_168             = false,
  $null                     = false,

) {

  include crypto_win::event_logging

  include crypto_win::protocols::multi
  include crypto_win::protocols::ssl_2_0
  include crypto_win::protocols::ssl_3_0
  include crypto_win::protocols::tls_1_0
  include crypto_win::protocols::tls_1_1
  include crypto_win::protocols::tls_1_2
  include crypto_win::protocols::pct_1_0

  include crypto_win::hashes::md5
  include crypto_win::hashes::sha
  include crypto_win::hashes::sha256
  include crypto_win::hashes::sha384
  include crypto_win::hashes::sha512

  include crypto_win::keyexchangealgorithms::pkcs
  include crypto_win::keyexchangealgorithms::ecdh
  include crypto_win::keyexchangealgorithms::diffie_hellman

  include crypto_win::ciphers::aes_128_128
  include crypto_win::ciphers::aes_256_256
  include crypto_win::ciphers::rc2_40_128
  include crypto_win::ciphers::rc2_56_128
  include crypto_win::ciphers::rc2_128_128
  include crypto_win::ciphers::rc4_40_128
  include crypto_win::ciphers::rc4_56_128
  include crypto_win::ciphers::rc4_64_128
  include crypto_win::ciphers::rc4_128_128
  include crypto_win::ciphers::des_56_56
  include crypto_win::ciphers::threedes_168
  include crypto_win::ciphers::null

}
