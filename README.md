# ca-cert

Tool to easily generate and manage [CA certificates](https://cacert.org). The goal is develop an imporved version [CA.pl](https://www.openssl.org/docs/apps/CA.pl.html) with a more minimal and better user experience.

Based on [SSL Certificates HOWTO](http://www.tldp.org/HOWTO/SSL-Certificates-HOWTO/index.html)

## Usage

Clone this repo using ```git clone git@github.com:gosuri/ca-cert.git``` and follow the below steps to generate a certificate

1. Configure OpenSSL (once)

     $ $EDITOR openssl.cnf

2. Create a root certificate (once)

     $ ca-cert --new-cert

3. Generate a certificate signing request (CSR) (for each domain)
    
     $ ca-cert --new-req

4. Sign the request (for each domain)
    
     $ ca-cert --sign

## Notes

```CA.pl``` comes with ```openssl``` and can be found under ```/System/Library/OpenSSL/misc/CA.pl``` on MacOSX

## License

The MIT License (MIT)

Copyright (c) 2014 Greg Osuri

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE
