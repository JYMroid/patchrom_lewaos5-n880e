.class public Llewa/content/res/IconAlias;
.super Ljava/lang/Object;
.source "IconAlias.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IconAlias"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAlias(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "config"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0}, Llewa/content/res/IconAlias;->loadDefaultAlias(Ljava/util/HashMap;)V

    .line 20
    invoke-static {p0, p1}, Llewa/content/res/IconAlias;->loadCustomAlias(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static loadCustomAlias(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 26
    .local v4, in:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, config:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 28
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .end local v4           #in:Ljava/io/InputStream;
    .local v5, in:Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 30
    .local v7, parser:Lorg/xmlpull/v1/XmlPullParser;
    const-string v8, "utf-8"

    invoke-interface {v7, v5, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 31
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 32
    .local v3, eventType:I
    :goto_0
    const/4 v8, 0x1

    if-eq v3, v8, :cond_1

    .line 33
    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Icon"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 34
    const/4 v8, 0x0

    const-string v9, "name"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, name:Ljava/lang/String;
    const/4 v8, 0x0

    const-string v9, "alias"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p0, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v0           #alias:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v4, v5

    .line 45
    .end local v3           #eventType:I
    .end local v5           #in:Ljava/io/InputStream;
    .end local v7           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4       #in:Ljava/io/InputStream;
    :cond_2
    if-eqz v4, :cond_3

    .line 47
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 52
    .end local v1           #config:Ljava/io/File;
    :cond_3
    :goto_1
    return-void

    .line 42
    :catch_0
    move-exception v2

    .line 43
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string v8, "IconAlias"

    const-string v9, "load icon alias"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    if-eqz v4, :cond_3

    .line 47
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 48
    :catch_1
    move-exception v8

    goto :goto_1

    .line 45
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    :goto_3
    if-eqz v4, :cond_4

    .line 47
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 49
    :cond_4
    :goto_4
    throw v8

    .line 48
    .restart local v1       #config:Ljava/io/File;
    :catch_2
    move-exception v8

    goto :goto_1

    .end local v1           #config:Ljava/io/File;
    :catch_3
    move-exception v9

    goto :goto_4

    .line 45
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v1       #config:Ljava/io/File;
    .restart local v5       #in:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_3

    .line 42
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v5       #in:Ljava/io/InputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static loadDefaultAlias(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "com.android.gallery3d#com.android.camera.Camera.png"

    const-string v1, "com.lewa.camera.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "com.android.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v1, "com.lewa.camera.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "com.android.gallery3d.app.Gallery.png"

    const-string v1, "com.lewa.photo.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "com.android.gallery3d.app.LewaGalleryActivity.png"

    const-string v1, "com.lewa.photo.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v0, "com.android.settings.bluetooth.RequestPermissionActivity.png"

    const-string v1, "com.lewa.bluetooth.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v0, "com.lewa.gallery3d#com.android.camera.Camera.png"

    const-string v1, "com.lewa.camera.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v0, "com.lewa.gallery3d#com.android.camera.CameraLauncher.png"

    const-string v1, "com.lewa.camera.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "com.lewa.gallery3d#com.android.gallery3d.app.LewaGalleryActivity.png"

    const-string v1, "com.lewa.photo.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "com.lewa.PIM.contacts.activities.ContactsEntryActivity.png"

    const-string v1, "com.lewa.contacts.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "com.lewa.PIM.contacts.activities.DialtactsActivity.png"

    const-string v1, "com.lewa.phone.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "com.lewa.PIM.contacts.activities.MessageActivity.png"

    const-string v1, "com.lewa.messages.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v0, "com.lewa.PIM.contacts.ShareContactViaSDCard.png"

    const-string v1, "com.lewa.sdcard.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v0, "com.lewa.PIM.mms.ui.ComposeMessageActivity.png"

    const-string v1, "com.lewa.messages.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v0, "android.png"

    const-string v1, "lewa.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v0, "com.android.browser.png"

    const-string v1, "com.lewa.browser.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "com.android.calculator2.png"

    const-string v1, "com.lewa.calculator.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v0, "com.android.calendar.png"

    const-string v1, "com.lewa.calendar.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "com.android.calendar.png"

    const-string v1, "com.lewa.calendar.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v0, "com.android.camera.png"

    const-string v1, "com.lewa.camera.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "com.android.deskclock.png"

    const-string v1, "com.lewa.deskclock.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string v0, "com.android.email.png"

    const-string v1, "com.lewa.mail.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "com.android.exchange.png"

    const-string v1, "com.lewa.mail.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "com.android.facelock.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "com.android.galaxy4.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "com.android.gallery3d.png"

    const-string v1, "com.lewa.photo.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "com.android.magicsmoke.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "com.android.musicvis.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "com.android.noisefield.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v0, "com.android.phasebeam.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "com.android.phone.png"

    const-string v1, "com.lewa.phone.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v0, "com.android.providers.calendar.png"

    const-string v1, "com.lewa.calendar.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "com.android.providers.contacts.png"

    const-string v1, "com.lewa.contacts.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v0, "com.android.providers.downloads.png"

    const-string v1, "com.lewa.download.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "com.android.providers.downloads.ui.png"

    const-string v1, "com.lewa.download.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const-string v0, "com.android.providers.media.png"

    const-string v1, "com.lewa.music.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "com.android.providers.settings.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string v0, "com.android.providers.telephony.png"

    const-string v1, "com.lewa.phone.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "com.android.settings.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v0, "com.android.soundrecorder.png"

    const-string v1, "com.lewa.soundrecorder.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "com.android.stk.png"

    const-string v1, "com.lewa.stk.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "com.android.wallpaper.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "com.android.wallpaper.holospiral.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v0, "com.android.wallpaper.livepicker.png"

    const-string v1, "com.lewa.wallpaper.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "com.baidu.BaiduMap.png"

    const-string v1, "com.lewa.maps.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v0, "com.baidu.searchbox.png"

    const-string v1, "com.lewa.search.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "com.baidu.voiceassistant.png"

    const-string v1, "com.lewa.voicecommand.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v0, "com.chaozh.iReader.png"

    const-string v1, "com.lewa.bookstore.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "com.lewa.appstore.png"

    const-string v1, "com.lewa.store.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v0, "com.lewa.flashlight.png"

    const-string v1, "com.lewa.torch.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "com.lewa.gallery3d.png"

    const-string v1, "com.lewa.photo.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v0, "com.lewa.labi.png"

    const-string v1, "com.lewa.contacts.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "com.lewa.launcher.png"

    const-string v1, "lewa.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "com.lewa.lockscreen.png"

    const-string v1, "com.lewa.lock.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "com.lewa.lewaguide.png"

    const-string v1, "com.lewa.guidebook.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "com.lewa.netmgr.adjust.png"

    const-string v1, "com.lewa.netmgr.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "com.lewa.PIM.png"

    const-string v1, "com.lewa.contacts.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v0, "com.lewa.player.png"

    const-string v1, "com.lewa.music.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "com.lewa.spm.png"

    const-string v1, "com.lewa.battery.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v0, "com.lewa.themechooser.png"

    const-string v1, "com.lewa.theme.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "com.lewa.thememanager.png"

    const-string v1, "com.lewa.theme.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v0, "com.lewa.updater.png"

    const-string v1, "com.lewa.update.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "com.mediatek.batterywarning.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v0, "com.mediatek.bluetooth.png"

    const-string v1, "com.lewa.bluetooth.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v0, "com.mediatek.FMRadio.png"

    const-string v1, "com.lewa.radio.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v0, "com.mediatek.schpwronoff.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v0, "com.mediatek.StkSelection.png"

    const-string v1, "com.lewa.stk.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v0, "com.mediatek.videoplayer.png"

    const-string v1, "com.lewa.video.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v0, "com.mediatek.voicecommand.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v0, "com.mediatek.voiceunlock.png"

    const-string v1, "com.lewa.settings.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v0, "com.mediatek.datatransfer.png"

    const-string v1, "com.lewa.datatransfer.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v0, "com.when.android.calendar365.png"

    const-string v1, "com.lewa.calendar.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v0, "org.dayup.gnotes.lewa.png"

    const-string v1, "com.lewa.note.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v0, "tv.huohua.android.ocher.png"

    const-string v1, "com.lewa.movie.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v0, "com.quicinc.fmradio.png"

    const-string v1, "com.lewa.radio.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "com.android.bluetooth.png"

    const-string v1, "com.lewa.bluetooth.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v0, "com_android_camera_cameralauncher.png"

    const-string v1, "com_android_camera.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v0, "com_android_gallery3d_app_lewagalleryactivity.png"

    const-string v1, "com_android_galleryx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v0, "com_android_gallery3d_app_gallery.png"

    const-string v1, "com_android_galleryx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v0, "com_lewa_gallery3d_app_lewagalleryactivity.png"

    const-string v1, "com_android_galleryx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v0, "com.baidu.baidumap.png"

    const-string v1, "com_android_mapx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v0, "com_chaozh_ireader.png"

    const-string v1, "com_lewa_books.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v0, "com_lewa_appstore.png"

    const-string v1, "com_lewa_store.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v0, "com_mediatek_fmradio.png"

    const-string v1, "com_lewa_fmradio.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v0, "com_mediatek_videoplayer.png"

    const-string v1, "com_android_video.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v0, "com_socogame_ppc.png"

    const-string v1, "com_android_gamex.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v0, "com_when_android_calendar365.png"

    const-string v1, "com_android_calendarx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v0, "com_android_calendar.png"

    const-string v1, "com_android_calendarx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v0, "org_dayup_gnotes_lewa.png"

    const-string v1, "com_android_notesx.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "tv_huohua_android_ocher.png"

    const-string v1, "com_lewa_movie.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "com_android_folder.png"

    const-string v1, "icon_folder_background.png"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method
