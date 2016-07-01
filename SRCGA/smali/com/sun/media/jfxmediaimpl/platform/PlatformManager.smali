.class public final Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
.super Ljava/lang/Object;
.source "PlatformManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/media/jfxmediaimpl/platform/PlatformManager$PlatformManagerInitializer;
    }
.end annotation


# static fields
.field private static enabledPlatforms:Ljava/lang/String;


# instance fields
.field private final platforms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/media/jfxmediaimpl/platform/Platform;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 54
    return-void
.end method

.method private constructor <init>()V
    .locals 9

    .prologue
    .line 79
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    .line 80
    move-object v5, v0

    new-instance v6, Ljava/util/ArrayList;

    move-object v8, v6

    move-object v6, v8

    move-object v7, v8

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    .line 93
    const-string v5, "JavaPlatform"

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->isPlatformEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 94
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/java/JavaPlatform;->getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-result-object v5

    move-object v1, v5

    .line 95
    .local v1, "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v5, 0x0

    move-object v6, v1

    if-eq v5, v6, :cond_0

    .line 96
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 100
    .end local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_0
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "GSTPlatform"

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->isPlatformEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 101
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/gstreamer/GSTPlatform;->getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-result-object v5

    move-object v1, v5

    .line 102
    .restart local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v5, 0x0

    move-object v6, v1

    if-eq v5, v6, :cond_1

    .line 103
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 108
    .end local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_1
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isMacOSX()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "OSXPlatform"

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->isPlatformEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/osx/OSXPlatform;->getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-result-object v5

    move-object v1, v5

    .line 110
    .restart local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v5, 0x0

    move-object v6, v1

    if-eq v5, v6, :cond_2

    .line 111
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 115
    .end local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_2
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/HostUtils;->isIOS()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "IOSPlatform"

    invoke-static {v5}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->isPlatformEnabled(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 116
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/ios/IOSPlatform;->getPlatformInstance()Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-result-object v5

    move-object v1, v5

    .line 117
    .restart local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v5, 0x0

    move-object v6, v1

    if-eq v5, v6, :cond_3

    .line 118
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    move-object v6, v1

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 122
    .end local v1    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_3
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 123
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Enabled JFXMedia platforms: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 124
    .local v2, "sb":Ljava/lang/StringBuilder;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-object v4, v5

    .line 125
    .local v4, "p":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v5, v2

    const-string v6, "\n   - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 126
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 127
    goto :goto_0

    .line 128
    .end local v4    # "p":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_4
    const/4 v5, 0x1

    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 130
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-void
.end method

.method synthetic constructor <init>(Lcom/sun/media/jfxmediaimpl/platform/PlatformManager$1;)V
    .locals 3

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    move-object v1, p1

    .local v1, "x0":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager$1;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->lambda$static$8()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getManager()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .locals 1

    .prologue
    .line 74
    # getter for: Lcom/sun/media/jfxmediaimpl/platform/PlatformManager$PlatformManagerInitializer;->globalInstance:Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager$PlatformManagerInitializer;->access$100()Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;

    move-result-object v0

    return-object v0
.end method

.method private static getPlatformSettings()V
    .locals 2

    .prologue
    .line 58
    const-string v0, "jfxmedia.platforms"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->enabledPlatforms:Ljava/lang/String;

    .line 59
    return-void
.end method

.method private static isPlatformEnabled(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const/4 v1, 0x0

    sget-object v2, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->enabledPlatforms:Ljava/lang/String;

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->enabledPlatforms:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 66
    .end local v0    # "name":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->enabledPlatforms:Ljava/lang/String;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static synthetic lambda$static$8()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->getPlatformSettings()V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;
    .locals 8

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentType()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 184
    .local v2, "mimeType":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-object v4, v6

    .line 185
    .local v4, "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->canPlayContentType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 186
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->createMedia(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/Media;

    move-result-object v6

    move-object v5, v6

    .line 187
    .local v5, "outMedia":Lcom/sun/media/jfxmedia/Media;
    const/4 v6, 0x0

    move-object v7, v5

    if-eq v6, v7, :cond_0

    .line 188
    move-object v6, v5

    move-object v0, v6

    .line 193
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .end local v4    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .end local v5    # "outMedia":Lcom/sun/media/jfxmedia/Media;
    :goto_1
    return-object v0

    .line 191
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .restart local v4    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_0
    goto :goto_0

    .line 193
    .end local v4    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;
    .locals 8

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/media/jfxmedia/locator/Locator;->getContentType()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 199
    .local v2, "mimeType":Ljava/lang/String;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v3, v6

    :goto_0
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-object v4, v6

    .line 200
    .local v4, "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v6, v4

    move-object v7, v2

    invoke-virtual {v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->canPlayContentType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 201
    move-object v6, v4

    move-object v7, v1

    invoke-virtual {v6, v7}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->createMediaPlayer(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MediaPlayer;

    move-result-object v6

    move-object v5, v6

    .line 202
    .local v5, "outPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    const/4 v6, 0x0

    move-object v7, v5

    if-eq v6, v7, :cond_0

    .line 203
    move-object v6, v5

    move-object v0, v6

    .line 208
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .end local v4    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .end local v5    # "outPlayer":Lcom/sun/media/jfxmedia/MediaPlayer;
    :goto_1
    return-object v0

    .line 206
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .restart local v4    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_0
    goto :goto_0

    .line 208
    .end local v4    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method public createMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;
    .locals 7

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    move-object v1, p1

    .local v1, "source":Lcom/sun/media/jfxmedia/locator/Locator;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v5

    :goto_0
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-object v3, v5

    .line 171
    .local v3, "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->createMetadataParser(Lcom/sun/media/jfxmedia/locator/Locator;)Lcom/sun/media/jfxmedia/MetadataParser;

    move-result-object v5

    move-object v4, v5

    .line 172
    .local v4, "parser":Lcom/sun/media/jfxmedia/MetadataParser;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 173
    move-object v5, v4

    move-object v0, v5

    .line 177
    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .end local v3    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .end local v4    # "parser":Lcom/sun/media/jfxmedia/MetadataParser;
    :goto_1
    return-object v0

    .line 175
    .restart local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    .restart local v3    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .restart local v4    # "parser":Lcom/sun/media/jfxmedia/MetadataParser;
    :cond_0
    goto :goto_0

    .line 177
    .end local v3    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .end local v4    # "parser":Lcom/sun/media/jfxmedia/MetadataParser;
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public getSupportedContentTypes()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v9

    .line 150
    .local v1, "outTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 151
    move-object v9, v0

    iget-object v9, v9, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v2, v9

    :goto_0
    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v9, v2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-object v3, v9

    .line 152
    .local v3, "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Getting content types from platform: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 155
    :cond_0
    move-object v9, v3

    invoke-virtual {v9}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->getSupportedContentTypes()[Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 156
    .local v4, "npt":[Ljava/lang/String;
    move-object v9, v4

    if-eqz v9, :cond_2

    .line 157
    move-object v9, v4

    move-object v5, v9

    move-object v9, v5

    array-length v9, v9

    move v6, v9

    const/4 v9, 0x0

    move v7, v9

    :goto_1
    move v9, v7

    move v10, v6

    if-ge v9, v10, :cond_2

    move-object v9, v5

    move v10, v7

    aget-object v9, v9, v10

    move-object v8, v9

    .line 158
    .local v8, "type":Ljava/lang/String;
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 159
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v9

    .line 157
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 163
    .end local v8    # "type":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 166
    .end local v3    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    .end local v4    # "npt":[Ljava/lang/String;
    :cond_3
    move-object v9, v1

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    return-object v0
.end method

.method public declared-synchronized loadPlatforms()V
    .locals 8

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    move-object v6, p0

    monitor-enter v6

    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;->platforms:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    .line 135
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/media/jfxmediaimpl/platform/Platform;>;"
    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/media/jfxmediaimpl/platform/Platform;

    move-object v2, v3

    .line 137
    .local v2, "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/media/jfxmediaimpl/platform/Platform;->loadPlatform()Z

    move-result v3

    if-nez v3, :cond_1

    .line 138
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/sun/media/jfxmedia/logging/Logger;->canLog(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load platform: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sun/media/jfxmedia/logging/Logger;->logMsg(ILjava/lang/String;)V

    .line 142
    :cond_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    goto :goto_0

    .line 145
    .end local v2    # "platty":Lcom/sun/media/jfxmediaimpl/platform/Platform;
    :cond_2
    monitor-exit v6

    return-void

    .line 134
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sun/media/jfxmediaimpl/platform/Platform;>;"
    :catchall_0
    move-exception v0

    monitor-exit v6

    .end local v0    # "this":Lcom/sun/media/jfxmediaimpl/platform/PlatformManager;
    throw v0
.end method
