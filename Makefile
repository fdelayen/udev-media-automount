install:
	install -Dm644 media-automount.rules $(DESTDIR)/etc/udev/rules.d/99-media-automount.rules
	install -D media-automount $(DESTDIR)/usr/bin/media-automount
	install -Dm644 media-automount@.service $(DESTDIR)/usr/lib/systemd/system/media-automount@.service

clean:
	rm $(DESTDIR)/usr/lib/udev/rules.d/99-media-automount.rules
	rm $(DESTDIR)/usr/bin/media-automount
	rm $(DESTDIR)/usr/lib/systemd/system/media-automount@.service
