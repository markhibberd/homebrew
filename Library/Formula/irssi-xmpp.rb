require 'formula'

class Irssi < Formula
  homepage 'http://cybione.org/~irssi-xmpp/'
  url 'http://cybione.org/~irssi-xmpp/files/irssi-xmpp-0.52.tar.gz'
  sha1 '330d80e6deb115b875d2a4e1ad0841888285e378'

  depends_on 'pkg-config' => :build
  depends_on 'glib'
  depends_on 'irssi'
  depends_on 'loudmouth'

  def install
    # 'make' and 'make install' must be done separately on some systems
    system "make PREFIX=#{prefix} IRSSI_INCLUDE=/usr/local/Cellar/irssi/0.8.15/include/irssi"
    system "make install PREFIX=#{prefix}"
  end
end

__END__
