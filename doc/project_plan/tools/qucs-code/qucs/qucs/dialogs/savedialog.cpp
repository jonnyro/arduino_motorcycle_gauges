/***************************************************************************
 * Copyright (C) 2006 by Gopala Krishna A <krishna.ggk@gmail.com>          *
 * Copyright (C) 2007 Stefan Jahn <stefan@lkcc.org>                        *
 *                                                                         *
 * This is free software; you can redistribute it and/or modify            *
 * it under the terms of the GNU General Public License as published by    *
 * the Free Software Foundation; either version 2, or (at your option)     *
 * any later version.                                                      *
 *                                                                         *
 * This software is distributed in the hope that it will be useful,        *
 * but WITHOUT ANY WARRANTY; without even the implied warranty of          *
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the           *
 * GNU General Public License for more details.                            *
 *                                                                         *
 * You should have received a copy of the GNU General Public License       *
 * along with this package; see the file COPYING.  If not, write to        *
 * the Free Software Foundation, Inc., 51 Franklin Street - Fifth Floor,   *
 * Boston, MA 02110-1301, USA.                                             *
 ***************************************************************************/

#include "savedialog.h"
#include "qucs.h"
#include "qucsdoc.h"

#include <qvariant.h>
#include <qlabel.h>
#include <qheader.h>
#include <qlistview.h>
#include <qpushbutton.h>
#include <qlayout.h>
#include <qtooltip.h>
#include <qwhatsthis.h>

SaveDialog::SaveDialog( QWidget* parent, const char* name, bool modal, WFlags fl )
   : QDialog( parent, name, modal, fl ),unsavedDocs()
{
   if ( !name )
      setName( "SaveDialog" );
   app = 0l;
   initDialog();
}

SaveDialog::~SaveDialog()
{
}

void SaveDialog::setApp(QucsApp *a)
{
   app = a;
}

void SaveDialog::initDialog()
{
   setSizeGripEnabled( FALSE );
   SaveDialogLayout = new QVBoxLayout( this, 11, 6, "SaveDialogLayout"); 

   label = new QLabel( this, "label" );
   SaveDialogLayout->addWidget( label );

   filesView = new QListView( this, "filesView" );
   filesView->addColumn( tr( "Modified Files" ) );
   filesView->header()->setResizeEnabled( FALSE, filesView->header()->count() - 1 );
   filesView->setItemMargin( 1 );
   filesView->setResizeMode( QListView::AllColumns );
   SaveDialogLayout->addWidget( filesView );

   buttonsLayout = new QHBoxLayout( 0, 0, 6, "buttonsLayout"); 

   abortClosingButton = new QPushButton( this, "abortClosingButton" );
   buttonsLayout->addWidget( abortClosingButton );
   spacer = new QSpacerItem( 20, 20, QSizePolicy::Expanding, QSizePolicy::Minimum );
   buttonsLayout->addItem( spacer );

   dontSaveButton = new QPushButton( this, "dontSaveButton" );
   buttonsLayout->addWidget( dontSaveButton );

   saveSelectedButton = new QPushButton( this, "saveSelectedButton" );
   saveSelectedButton->setDefault(true);
   buttonsLayout->addWidget( saveSelectedButton );
   SaveDialogLayout->addLayout( buttonsLayout );
   languageChange();
   resize( QSize(500, 300).expandedTo(minimumSizeHint()) );
   clearWState( WState_Polished );

   connect(abortClosingButton,SIGNAL(clicked()),this,SLOT(reject()));
   connect(dontSaveButton,SIGNAL(clicked()),this,SLOT(dontSaveClicked()));
   connect(saveSelectedButton,SIGNAL(clicked()),this,SLOT(saveSelectedClicked()));
}

void SaveDialog::addUnsavedDoc(QucsDoc *doc)
{
   QString text = (doc->DocName).isEmpty() ? tr("Untitled") : doc->DocName;
   QCheckListItem *item = new QCheckListItem(filesView,
                                             text,
                                             QCheckListItem::CheckBox );
   item->setOn( true );
   unsavedDocs.insert( doc, item );
}

void SaveDialog::languageChange()
{
   setCaption( tr( "Save the modified files" ) );
   label->setText( tr( "Select files to be saved" ) );
   filesView->header()->setLabel( 0, tr( "Modified Files" ) );
   abortClosingButton->setText( tr( "Abort Closing" ) );
   dontSaveButton->setText( tr( "Don't Save" ) );
   saveSelectedButton->setText( tr( "Save Selected" ) );
}

void SaveDialog::dontSaveClicked()
{
   done(DontSave);
}

void SaveDialog::saveSelectedClicked()
{
   QPtrList<QucsDoc> unsavables;
   QMap<QucsDoc*,QCheckListItem*>::iterator it(unsavedDocs.begin());
   for ( ; it != unsavedDocs.end(); ++it)
   {
      if ( it.data()->isOn() )
      {
         QucsDoc *doc = static_cast<QucsDoc*>(it.key());
         if(app->saveFile(doc) == false)
            unsavables.append(doc);
         else
            unsavedDocs.remove(it);
      }
   }
   if(unsavables.isEmpty())
      done(SaveSelected);
}

void SaveDialog::reject()
{
   done(AbortClosing);
}

bool SaveDialog::isEmpty() const
{
   return unsavedDocs.isEmpty();
}
