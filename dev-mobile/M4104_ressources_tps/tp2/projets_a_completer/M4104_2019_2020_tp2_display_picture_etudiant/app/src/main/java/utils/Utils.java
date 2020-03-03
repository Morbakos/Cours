package utils;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;

import androidx.annotation.AnyRes;
import androidx.annotation.NonNull;

import java.io.File;

public class Utils {

    /**
     * Renvoie l'Uri d'une ressource drawable à partir de son identifiant
     * @param context - contexte
     * @param drawableId : identifiant du drawable
     * @return - Uri de la ressource
     */
    public static final Uri getUriToDrawable(@NonNull Context context,
                                             @AnyRes int drawableId) {
        Uri imageUri = Uri.parse(ContentResolver.SCHEME_ANDROID_RESOURCE +
                "://" + context.getResources().getResourcePackageName(drawableId)
                + '/' + context.getResources().getResourceTypeName(drawableId)
                + '/' + context.getResources().getResourceEntryName(drawableId) );

        return imageUri;

    }

    /**
     * Renvoie l'image à partir de son Uri
     * @param uriBitmap : Uri de l'image
     * @return (Bitmap) : image s
     */
    public static Bitmap getImageFromUri(Uri uriBitmap) {

        File imgFile = new File(uriBitmap.getPath());


        Bitmap myBitmap = null;

        if (imgFile.exists()) {

            myBitmap = BitmapFactory.decodeFile(imgFile.getAbsolutePath());

        }
        return myBitmap;
    }


}
