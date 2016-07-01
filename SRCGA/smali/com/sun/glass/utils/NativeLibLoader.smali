.class public Lcom/sun/glass/utils/NativeLibLoader;
.super Ljava/lang/Object;
.source "NativeLibLoader.java"


# static fields
.field private static libDir:Ljava/io/File;

.field private static libPrefix:Ljava/lang/String;

.field private static libSuffix:Ljava/lang/String;

.field private static final loaded:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static verbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/util/HashSet;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    .line 47
    const-string v0, ""

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    .line 51
    invoke-static {}, Lcom/sun/glass/utils/NativeLibLoader$$Lambda$1;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 55
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    move-object v0, p0

    .local v0, "this":Lcom/sun/glass/utils/NativeLibLoader;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$lambda$0()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lcom/sun/glass/utils/NativeLibLoader;->lambda$static$133()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static initializePath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14

    .prologue
    .line 58
    move-object v0, p0

    .local v0, "propname":Ljava/lang/String;
    move-object v8, v0

    const-string v9, ""

    invoke-static {v8, v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 59
    .local v1, "ldpath":Ljava/lang/String;
    sget-object v8, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    move-object v2, v8

    .line 60
    .local v2, "ps":Ljava/lang/String;
    move-object v8, v1

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move v3, v8

    .line 63
    .local v3, "ldlen":I
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v4, v8

    .line 64
    .local v4, "i":I
    const/4 v8, 0x0

    move v6, v8

    .line 65
    .local v6, "n":I
    :goto_0
    move v8, v4

    if-ltz v8, :cond_0

    .line 66
    add-int/lit8 v6, v6, 0x1

    .line 67
    move-object v8, v1

    move-object v9, v2

    move v10, v4

    const/4 v11, 0x1

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move v4, v8

    goto :goto_0

    .line 71
    :cond_0
    move v8, v6

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    move-object v7, v8

    .line 74
    .local v7, "paths":[Ljava/lang/String;
    const/4 v8, 0x0

    move v13, v8

    move v8, v13

    move v9, v13

    move v4, v9

    move v6, v8

    .line 75
    move-object v8, v1

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    move v5, v8

    .line 76
    .local v5, "j":I
    :goto_1
    move v8, v5

    if-ltz v8, :cond_3

    .line 77
    move v8, v5

    move v9, v4

    sub-int/2addr v8, v9

    if-lez v8, :cond_2

    .line 78
    move-object v8, v7

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    move-object v10, v1

    move v11, v4

    move v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 82
    :cond_1
    :goto_2
    move v8, v5

    const/4 v9, 0x1

    add-int/lit8 v8, v8, 0x1

    move v4, v8

    .line 83
    move-object v8, v1

    move-object v9, v2

    move v10, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v8

    move v5, v8

    goto :goto_1

    .line 79
    :cond_2
    move v8, v5

    move v9, v4

    sub-int/2addr v8, v9

    if-nez v8, :cond_1

    .line 80
    move-object v8, v7

    move v9, v6

    add-int/lit8 v6, v6, 0x1

    const-string v10, "."

    aput-object v10, v8, v9

    goto :goto_2

    .line 85
    :cond_3
    move-object v8, v7

    move v9, v6

    move-object v10, v1

    move v11, v4

    move v12, v3

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 86
    move-object v8, v7

    move-object v0, v8

    .end local v0    # "propname":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$static$133()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    const-string v0, "javafx.verbose"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized loadLibrary(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 38
    move-object v0, p0

    .local v0, "libname":Ljava/lang/String;
    const-class v3, Lcom/sun/glass/utils/NativeLibLoader;

    monitor-enter v3

    :try_start_0
    sget-object v1, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibraryInternal(Ljava/lang/String;)V

    .line 40
    sget-object v1, Lcom/sun/glass/utils/NativeLibLoader;->loaded:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 42
    :cond_0
    monitor-exit v3

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v3

    .end local v0    # "libname":Ljava/lang/String;
    throw v0
.end method

.method private static loadLibraryFullPath(Ljava/lang/String;)V
    .locals 15

    .prologue
    .line 155
    move-object v0, p0

    .local v0, "libraryName":Ljava/lang/String;
    :try_start_0
    sget-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    if-nez v9, :cond_3

    .line 158
    const-string v9, "NativeLibLoader.class"

    move-object v1, v9

    .line 159
    .local v1, "theClassFile":Ljava/lang/String;
    const-class v9, Lcom/sun/glass/utils/NativeLibLoader;

    move-object v2, v9

    .line 160
    .local v2, "theClass":Ljava/lang/Class;
    move-object v9, v2

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 161
    .local v3, "classUrlString":Ljava/lang/String;
    move-object v9, v3

    const-string v10, "jar:file:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v9, v3

    const/16 v10, 0x21

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 162
    :cond_0
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid URL for class: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v1    # "theClassFile":Ljava/lang/String;
    .end local v2    # "theClass":Ljava/lang/Class;
    .end local v3    # "classUrlString":Ljava/lang/String;
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 211
    .local v1, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/UnsatisfiedLinkError;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/UnsatisfiedLinkError;-><init>()V

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v9

    check-cast v9, Ljava/lang/UnsatisfiedLinkError;

    throw v9

    .line 165
    .local v1, "theClassFile":Ljava/lang/String;
    .restart local v2    # "theClass":Ljava/lang/Class;
    .restart local v3    # "classUrlString":Ljava/lang/String;
    :cond_1
    move-object v9, v3

    const/4 v10, 0x4

    move-object v11, v3

    const/16 v12, 0x21

    :try_start_1
    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    move-object v4, v9

    .line 167
    .local v4, "tmpStr":Ljava/lang/String;
    move-object v9, v4

    const/16 v10, 0x2f

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    move-object v10, v4

    const/16 v11, 0x5c

    invoke-virtual {v10, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v5, v9

    .line 170
    .local v5, "lastIndexOfSlash":I
    const-string v9, "os.name"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 171
    .local v6, "osName":Ljava/lang/String;
    const/4 v9, 0x0

    move-object v7, v9

    .line 172
    .local v7, "relativeDir":Ljava/lang/String;
    move-object v9, v6

    const-string v10, "Windows"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 173
    const-string v9, "../../bin"

    move-object v7, v9

    .line 181
    :cond_2
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    const/4 v11, 0x0

    move v12, v5

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 183
    .local v8, "libDirUrlString":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    new-instance v11, Ljava/net/URI;

    move-object v14, v11

    move-object v11, v14

    move-object v12, v14

    move-object v13, v8

    invoke-direct {v12, v13}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    .line 186
    move-object v9, v6

    const-string v10, "Windows"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 187
    const-string v9, ""

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 188
    const-string v9, ".dll"

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    .line 198
    .end local v1    # "theClassFile":Ljava/lang/String;
    .end local v2    # "theClass":Ljava/lang/Class;
    .end local v3    # "classUrlString":Ljava/lang/String;
    .end local v4    # "tmpStr":Ljava/lang/String;
    .end local v5    # "lastIndexOfSlash":I
    .end local v6    # "osName":Ljava/lang/String;
    .end local v7    # "relativeDir":Ljava/lang/String;
    .end local v8    # "libDirUrlString":Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v9, Ljava/io/File;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    sget-object v11, Lcom/sun/glass/utils/NativeLibLoader;->libDir:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    move-object v14, v12

    move-object v12, v14

    move-object v13, v14

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v9

    .line 199
    .local v1, "libFile":Ljava/io/File;
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    move-object v2, v9

    .line 201
    .local v2, "libFileName":Ljava/lang/String;
    move-object v9, v2

    :try_start_2
    invoke-static {v9}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 202
    sget-boolean v9, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v9, :cond_4

    .line 203
    sget-object v9, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Loaded "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v1

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " from relative path"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    .line 212
    .line 213
    :cond_4
    return-void

    .line 174
    .local v1, "theClassFile":Ljava/lang/String;
    .local v2, "theClass":Ljava/lang/Class;
    .restart local v3    # "classUrlString":Ljava/lang/String;
    .restart local v4    # "tmpStr":Ljava/lang/String;
    .restart local v5    # "lastIndexOfSlash":I
    .restart local v6    # "osName":Ljava/lang/String;
    .restart local v7    # "relativeDir":Ljava/lang/String;
    :cond_5
    move-object v9, v6

    :try_start_3
    const-string v10, "Mac"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 175
    const-string v9, ".."

    move-object v7, v9

    goto/16 :goto_0

    .line 176
    :cond_6
    move-object v9, v6

    const-string v10, "Linux"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 177
    new-instance v9, Ljava/lang/StringBuilder;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "../"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "os.arch"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v7, v9

    goto/16 :goto_0

    .line 189
    .restart local v8    # "libDirUrlString":Ljava/lang/String;
    :cond_7
    move-object v9, v6

    const-string v10, "Mac"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 190
    const-string v9, "lib"

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 191
    const-string v9, ".dylib"

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    goto/16 :goto_1

    .line 192
    :cond_8
    move-object v9, v6

    const-string v10, "Linux"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 193
    const-string v9, "lib"

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libPrefix:Ljava/lang/String;

    .line 194
    const-string v9, ".so"

    sput-object v9, Lcom/sun/glass/utils/NativeLibLoader;->libSuffix:Ljava/lang/String;

    goto/16 :goto_1

    .line 206
    .end local v3    # "classUrlString":Ljava/lang/String;
    .end local v4    # "tmpStr":Ljava/lang/String;
    .end local v5    # "lastIndexOfSlash":I
    .end local v6    # "osName":Ljava/lang/String;
    .end local v7    # "relativeDir":Ljava/lang/String;
    .end local v8    # "libDirUrlString":Ljava/lang/String;
    .local v1, "libFile":Ljava/io/File;
    .local v2, "libFileName":Ljava/lang/String;
    :catch_1
    move-exception v9

    move-object v3, v9

    .line 207
    .local v3, "ex":Ljava/lang/UnsatisfiedLinkError;
    move-object v9, v3

    throw v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method private static loadLibraryInternal(Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "libraryName":Ljava/lang/String;
    move-object v7, v0

    :try_start_0
    invoke-static {v7}, Lcom/sun/glass/utils/NativeLibLoader;->loadLibraryFullPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .line 147
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 100
    .local v1, "ex":Ljava/lang/UnsatisfiedLinkError;
    const-string v7, "java.library.path"

    invoke-static {v7}, Lcom/sun/glass/utils/NativeLibLoader;->initializePath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 101
    .local v2, "libPath":[Ljava/lang/String;
    const/4 v7, 0x0

    move v3, v7

    .local v3, "i":I
    :goto_1
    move v7, v3

    move-object v8, v2

    array-length v8, v8

    if-ge v7, v8, :cond_2

    .line 103
    move-object v7, v2

    move v8, v3

    :try_start_1
    aget-object v7, v7, v8

    move-object v4, v7

    .line 104
    .local v4, "path":Ljava/lang/String;
    move-object v7, v4

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 105
    :cond_0
    move-object v7, v0

    invoke-static {v7}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 106
    .local v5, "fileName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v11, v9

    move-object v9, v11

    move-object v10, v11

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v6, v7

    .line 107
    .local v6, "libFile":Ljava/io/File;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 108
    sget-boolean v7, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v7, :cond_1

    .line 109
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " from java.library.path"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    :cond_1
    goto/16 :goto_0

    .line 113
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "fileName":Ljava/lang/String;
    .end local v6    # "libFile":Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 101
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 122
    :cond_2
    move-object v7, v0

    :try_start_2
    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 123
    sget-boolean v7, Lcom/sun/glass/utils/NativeLibLoader;->verbose:Z

    if-eqz v7, :cond_3

    .line 124
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WARNING: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "    using System.loadLibrary("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") as a fallback"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    :cond_3
    goto/16 :goto_0

    .line 128
    :catch_2
    move-exception v7

    move-object v3, v7

    .line 133
    .local v3, "ex2":Ljava/lang/UnsatisfiedLinkError;
    const-string v7, "iOS"

    const-string v8, "os.name"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v0

    const-string v8, "-"

    .line 134
    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 135
    move-object v7, v0

    const-string v8, "-"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 137
    move-object v7, v0

    :try_start_3
    invoke-static {v7}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_3 .. :try_end_3} :catch_3

    .line 138
    goto/16 :goto_0

    .line 139
    :catch_3
    move-exception v7

    move-object v4, v7

    .line 140
    .local v4, "ex3":Ljava/lang/UnsatisfiedLinkError;
    move-object v7, v4

    throw v7

    .line 144
    .end local v4    # "ex3":Ljava/lang/UnsatisfiedLinkError;
    :cond_4
    move-object v7, v1

    throw v7
.end method
