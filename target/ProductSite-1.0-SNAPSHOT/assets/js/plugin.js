/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


( function() {
	CKEDITOR.plugins.add( 'uploadfile', {
		requires: 'uploadwidget,link',
		init: function( editor ) {
			// Do not execute this paste listener if it will not be possible to upload file.
			if ( !CKEDITOR.plugins.clipboard.isFileApiSupported ) {
				return;
			}

			var fileTools = CKEDITOR.fileTools,
				uploadUrl = fileTools.getUploadUrl( editor.config );

			if ( !uploadUrl ) {
				CKEDITOR.error( 'uploadfile-config' );
				return;
			}

			fileTools.addUploadWidget( editor, 'uploadfile', {
				uploadUrl: fileTools.getUploadUrl( editor.config ),

				fileToElement: function( file ) {
					// Show a placeholder with an empty link during the upload.
					var a = new CKEDITOR.dom.element( 'a' );
					a.setText( file.name );
					a.setAttribute( 'href', '#' );
					return a;
				},

				onUploaded: function( upload ) {
					this.replaceWith( '<a href="' + upload.url + '" target="_blank">' + upload.fileName + '</a>' );
				}
			} );
		}
	} );
} )();