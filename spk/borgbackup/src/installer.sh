#!/bin/sh

# Package
PACKAGE="borgbackup"
DNAME="Borg"

# Others
INSTALL_DIR="/usr/local/${PACKAGE}"
PYTHON_DIR="/usr/local/python3"
VIRTUALENV="${PYTHON_DIR}/bin/virtualenv"
PATH="${INSTALL_DIR}/env/bin:${INSTALL_DIR}/bin:${PYTHON_DIR}/bin:${PATH}"

preinst ()
{
    exit 0
}

postinst ()
{
    # Link
    ln -s ${SYNOPKG_PKGDEST} ${INSTALL_DIR}
    
    # Create a Python virtualenv
    ${VIRTUALENV} --system-site-packages ${INSTALL_DIR}/env > /dev/null

    # Install the wheels
    ${INSTALL_DIR}/env/bin/pip3 install --use-wheel --no-deps --no-index -U --force-reinstall -f ${INSTALL_DIR}/share/wheelhouse -r ${INSTALL_DIR}/share/wheelhouse/requirements.txt > /dev/null 2>&1

    sed -i -e "s|${INSTALL_DIR}/bin/python|${INSTALL_DIR}/env/bin/python|g" ${INSTALL_DIR}/env/bin/borg

    # Add symlink
    mkdir -p /usr/bin
    ln -s ${INSTALL_DIR}/env/bin/borg /usr/bin/borg

    exit 0
}

preuninst ()
{

    exit 0
}

postuninst ()
{

    # Remove link
    rm -f ${INSTALL_DIR}
    rm -f /usr/bin/borg

    exit 0
}

preupgrade ()
{
    exit 0
}

postupgrade ()
{
    exit 0
}
