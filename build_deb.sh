if [ -d deb_dist ]; then
	rm -rf deb_dist
fi
python setup.py --command-packages=stdeb.command sdist_dsc
cd deb_dist/python-etcd-*/
dpkg-buildpackage -b
cd ..
mv python-etcd*deb ../..
cd ..
rm -rf deb_dist
