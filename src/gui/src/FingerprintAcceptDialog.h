/*
    SKVM -- mouse and keyboard sharing utility
    Copyright (C) SKVM contributors

    This package is free software; you can redistribute it and/or
    modify it under the terms of the GNU General Public License
    found in the file LICENSE that should have accompanied this file.

    This package is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef SKVM_GUI_FINGERPRINT_ACCEPT_DIALOG_H
#define SKVM_GUI_FINGERPRINT_ACCEPT_DIALOG_H

#include "net/FingerprintData.h"
#include "skvm/AppRole.h"
#include <QDialog>
#include <memory>

namespace Ui {
class FingerprintAcceptDialog;
}

class FingerprintAcceptDialog : public QDialog
{
    Q_OBJECT

public:
    explicit FingerprintAcceptDialog(QWidget* parent,
                                     AppRole type,
                                     const skvm::FingerprintData& fingerprint_sha1,
                                     const skvm::FingerprintData& fingerprint_sha256);
    ~FingerprintAcceptDialog() override;

private:
    std::unique_ptr<Ui::FingerprintAcceptDialog> ui_;
};

#endif // SKVM_GUI_FINGERPRINT_ACCEPT_DIALOG_H
