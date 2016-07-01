.class public Lcom/sun/javafx/PlatformUtil;
.super Ljava/lang/Object;
.source "PlatformUtil.java"


# static fields
.field private static final ANDROID:Z

.field private static final IOS:Z

.field private static final LINUX:Z

.field private static final MAC:Z

.field private static final SOLARIS:Z

.field private static final WINDOWS:Z

.field private static final WINDOWS_7_OR_LATER:Z

.field private static final WINDOWS_VISTA_OR_LATER:Z

.field private static final doEGLCompositing:Z

.field private static final embedded:Z

.field private static final embeddedType:Ljava/lang/String;

.field private static javafxPlatform:Ljava/lang/String;

.field private static final os:Ljava/lang/String;

.field private static final useEGL:Z

.field private static final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/PlatformUtil;->os:Ljava/lang/String;

    .line 46
    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/PlatformUtil;->version:Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    .line 56
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->loadProperties()V

    .line 57
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$4;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->embedded:Z

    .line 58
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$5;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/sun/javafx/PlatformUtil;->embeddedType:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$6;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->useEGL:Z

    .line 60
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->useEGL:Z

    if-eqz v0, :cond_1

    .line 61
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$7;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->doEGLCompositing:Z

    .line 66
    :goto_0
    const-string v0, "android"

    sget-object v1, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Dalvik"

    const-string v1, "java.vm.name"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->ANDROID:Z

    .line 67
    sget-object v0, Lcom/sun/javafx/PlatformUtil;->os:Ljava/lang/String;

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS:Z

    .line 68
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/sun/javafx/PlatformUtil;->versionNumberGreaterThanOrEqualTo(F)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_2
    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS_VISTA_OR_LATER:Z

    .line 69
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS:Z

    if-eqz v0, :cond_4

    const v0, 0x40c33333    # 6.1f

    invoke-static {v0}, Lcom/sun/javafx/PlatformUtil;->versionNumberGreaterThanOrEqualTo(F)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS_7_OR_LATER:Z

    .line 70
    sget-object v0, Lcom/sun/javafx/PlatformUtil;->os:Ljava/lang/String;

    const-string v1, "Mac"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->MAC:Z

    .line 71
    sget-object v0, Lcom/sun/javafx/PlatformUtil;->os:Ljava/lang/String;

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->ANDROID:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->LINUX:Z

    .line 72
    sget-object v0, Lcom/sun/javafx/PlatformUtil;->os:Ljava/lang/String;

    const-string v1, "SunOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->SOLARIS:Z

    .line 73
    sget-object v0, Lcom/sun/javafx/PlatformUtil;->os:Ljava/lang/String;

    const-string v1, "iOS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->IOS:Z

    return-void

    .line 63
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/PlatformUtil;->doEGLCompositing:Z

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 69
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    .line 71
    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/PlatformUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$useGLES2$5()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$1()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$loadProperties$6()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$static$0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$static$1()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$4()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$static$2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$5()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$static$3()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$6()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->lambda$static$4()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static getEmbeddedType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/sun/javafx/PlatformUtil;->embeddedType:Ljava/lang/String;

    return-object v0
.end method

.method private static getRTDir()Ljava/io/File;
    .locals 15

    .prologue
    .line 218
    :try_start_0
    const-string v6, "PlatformUtil.class"

    move-object v0, v6

    .line 219
    .local v0, "theClassFile":Ljava/lang/String;
    const-class v6, Lcom/sun/javafx/PlatformUtil;

    move-object v1, v6

    .line 220
    .local v1, "theClass":Ljava/lang/Class;
    move-object v6, v1

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    move-object v2, v6

    .line 221
    .local v2, "url":Ljava/net/URL;
    move-object v6, v2

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move-object v0, v6

    .line 236
    .end local v0    # "theClassFile":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 222
    .restart local v0    # "theClassFile":Ljava/lang/String;
    :cond_0
    move-object v6, v2

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    .line 223
    .local v3, "classUrlString":Ljava/lang/String;
    move-object v6, v3

    const-string v7, "jar:file:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    const/16 v7, 0x21

    .line 224
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 225
    :cond_1
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0

    .line 228
    :cond_2
    move-object v6, v3

    const/4 v7, 0x4

    move-object v8, v3

    const/16 v9, 0x21

    .line 229
    invoke-virtual {v8, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 228
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 231
    .local v4, "s":Ljava/lang/String;
    move-object v6, v4

    const/16 v7, 0x2f

    .line 232
    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    move-object v7, v4

    const/16 v8, 0x5c

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    .line 231
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v5, v6

    .line 233
    .local v5, "lastIndexOfSlash":I
    new-instance v6, Ljava/io/File;

    move-object v14, v6

    move-object v6, v14

    move-object v7, v14

    new-instance v8, Ljava/net/URL;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    const/4 v11, 0x0

    move v12, v5

    const/4 v13, 0x1

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v0, v6

    goto :goto_0

    .line 235
    .end local v1    # "theClass":Ljava/lang/Class;
    .end local v2    # "url":Ljava/net/URL;
    .end local v3    # "classUrlString":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "lastIndexOfSlash":I
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 236
    .local v0, "e":Ljava/net/MalformedURLException;
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_0
.end method

.method public static isAndroid()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->ANDROID:Z

    return v0
.end method

.method public static isEmbedded()Z
    .locals 1

    .prologue
    .line 163
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->embedded:Z

    return v0
.end method

.method public static isIOS()Z
    .locals 1

    .prologue
    .line 177
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->IOS:Z

    return v0
.end method

.method public static isLinux()Z
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->LINUX:Z

    return v0
.end method

.method public static isMac()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->MAC:Z

    return v0
.end method

.method public static isSolaris()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->SOLARIS:Z

    return v0
.end method

.method public static isUnix()Z
    .locals 1

    .prologue
    .line 156
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->LINUX:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->SOLARIS:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWin7OrLater()Z
    .locals 1

    .prologue
    .line 110
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS_7_OR_LATER:Z

    return v0
.end method

.method public static isWinVistaOrLater()Z
    .locals 1

    .prologue
    .line 103
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS_VISTA_OR_LATER:Z

    return v0
.end method

.method public static isWindows()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->WINDOWS:Z

    return v0
.end method

.method private static synthetic lambda$loadProperties$6()Ljava/lang/Void;
    .locals 13

    .prologue
    .line 250
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->getRTDir()Ljava/io/File;

    move-result-object v7

    move-object v0, v7

    .line 251
    .local v0, "rtDir":Ljava/io/File;
    const-string v7, "javafx.platform.properties"

    move-object v1, v7

    .line 252
    .local v1, "propertyFilename":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v0

    const-string v10, "javafx.platform.properties"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v7

    .line 255
    .local v2, "rtProperties":Ljava/io/File;
    move-object v7, v2

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 256
    move-object v7, v2

    invoke-static {v7}, Lcom/sun/javafx/PlatformUtil;->loadPropertiesFromFile(Ljava/io/File;)V

    .line 257
    const/4 v7, 0x0

    move-object v0, v7

    .line 275
    .end local v0    # "rtDir":Ljava/io/File;
    :goto_0
    return-object v0

    .line 259
    .restart local v0    # "rtDir":Ljava/io/File;
    :cond_0
    const-string v7, "java.home"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 260
    .local v3, "javaHome":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v3

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "lib"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "javafx.platform.properties"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v4, v7

    .line 263
    .local v4, "javaHomeProperties":Ljava/io/File;
    move-object v7, v4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 264
    move-object v7, v4

    invoke-static {v7}, Lcom/sun/javafx/PlatformUtil;->loadPropertiesFromFile(Ljava/io/File;)V

    .line 265
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 268
    :cond_1
    const-string v7, "javafx.runtime.path"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 269
    .local v5, "javafxRuntimePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v5

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "javafx.platform.properties"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v7

    .line 271
    .local v6, "javafxRuntimePathProperties":Ljava/io/File;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 272
    move-object v7, v6

    invoke-static {v7}, Lcom/sun/javafx/PlatformUtil;->loadPropertiesFromFile(Ljava/io/File;)V

    .line 273
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 275
    :cond_2
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0
.end method

.method private static synthetic lambda$static$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    const-string v0, "javafx.platform"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$1()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 57
    const-string v0, "com.sun.javafx.isEmbedded"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string v0, "embedded"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$3()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 59
    const-string v0, "use.egl"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$static$4()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 61
    const-string v0, "doNativeComposite"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$useGLES2$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "use.gles2"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadProperties()V
    .locals 4

    .prologue
    .line 241
    const-string v2, "java.vm.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 242
    .local v0, "vmname":Ljava/lang/String;
    const-string v2, "os.arch"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 244
    .local v1, "arch":Ljava/lang/String;
    sget-object v2, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    const-string v3, "arm"

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move-object v2, v0

    if-eqz v2, :cond_1

    move-object v2, v0

    const-string v3, "Embedded"

    .line 246
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_2

    .line 247
    .line 277
    :cond_1
    :goto_0
    return-void

    .line 249
    :cond_2
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v2

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    .line 277
    goto :goto_0
.end method

.method private static loadPropertiesFromFile(Ljava/io/File;)V
    .locals 14

    .prologue
    .line 181
    move-object v0, p0

    .local v0, "file":Ljava/io/File;
    new-instance v10, Ljava/util/Properties;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/util/Properties;-><init>()V

    move-object v1, v10

    .line 183
    .local v1, "p":Ljava/util/Properties;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v0

    invoke-direct {v11, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v10

    .line 184
    .local v2, "in":Ljava/io/InputStream;
    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 185
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .line 189
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    sget-object v10, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    if-nez v10, :cond_0

    .line 190
    move-object v10, v1

    const-string v11, "javafx.platform"

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    .line 192
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v2, v10

    .line 193
    .local v2, "prefix":Ljava/lang/String;
    move-object v10, v2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    move v3, v10

    .line 194
    .local v3, "prefixLength":I
    const/4 v10, 0x0

    move v4, v10

    .line 195
    .local v4, "foundPlatform":Z
    move-object v10, v1

    invoke-virtual {v10}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v5, v10

    :goto_1
    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    move-object v10, v5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    .line 196
    .local v6, "o":Ljava/lang/Object;
    move-object v10, v6

    check-cast v10, Ljava/lang/String;

    move-object v7, v10

    .line 197
    .local v7, "key":Ljava/lang/String;
    move-object v10, v7

    move-object v11, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 198
    const/4 v10, 0x1

    move v4, v10

    .line 199
    move-object v10, v7

    move v11, v3

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    .line 200
    .local v8, "systemKey":Ljava/lang/String;
    move-object v10, v8

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    .line 201
    move-object v10, v1

    move-object v11, v7

    invoke-virtual {v10, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    .line 202
    .local v9, "value":Ljava/lang/String;
    move-object v10, v8

    move-object v11, v9

    invoke-static {v10, v11}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 205
    .end local v8    # "systemKey":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :cond_1
    goto :goto_1

    .line 186
    .end local v2    # "prefix":Ljava/lang/String;
    .end local v3    # "prefixLength":I
    .end local v4    # "foundPlatform":Z
    .end local v6    # "o":Ljava/lang/Object;
    .end local v7    # "key":Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 187
    .local v2, "e":Ljava/io/IOException;
    move-object v10, v2

    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 206
    .local v2, "prefix":Ljava/lang/String;
    .restart local v3    # "prefixLength":I
    .restart local v4    # "foundPlatform":Z
    :cond_2
    move v10, v4

    if-nez v10, :cond_3

    .line 207
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Warning: No settings found for javafx.platform=\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/sun/javafx/PlatformUtil;->javafxPlatform:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 211
    :cond_3
    return-void
.end method

.method public static useEGL()Z
    .locals 1

    .prologue
    .line 128
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->useEGL:Z

    return v0
.end method

.method public static useEGLWindowComposition()Z
    .locals 1

    .prologue
    .line 132
    sget-boolean v0, Lcom/sun/javafx/PlatformUtil;->doEGLCompositing:Z

    return v0
.end method

.method public static useGLES2()Z
    .locals 3

    .prologue
    .line 136
    const-string v1, "false"

    move-object v0, v1

    .line 137
    .local v0, "useGles2":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/PlatformUtil$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    .line 138
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .line 139
    const-string v1, "true"

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    const/4 v1, 0x1

    move v0, v1

    .line 142
    .end local v0    # "useGles2":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "useGles2":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private static versionNumberGreaterThanOrEqualTo(F)Z
    .locals 4

    .prologue
    .line 86
    move v0, p0

    .local v0, "value":F
    :try_start_0
    sget-object v2, Lcom/sun/javafx/PlatformUtil;->version:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v3, v0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .line 88
    .end local v0    # "value":F
    :goto_1
    return v0

    .line 86
    .restart local v0    # "value":F
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 88
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method
