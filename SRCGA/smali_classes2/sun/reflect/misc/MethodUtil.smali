.class public final Lsun/reflect/misc/MethodUtil;
.super Ljava/security/SecureClassLoader;
.source "MethodUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/reflect/misc/MethodUtil$Signature;
    }
.end annotation


# static fields
.field private static MISC_PKG:Ljava/lang/String;

.field private static TRAMPOLINE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const-string v0, "sun.reflect.misc."

    sput-object v0, Lsun/reflect/misc/MethodUtil;->MISC_PKG:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lsun/reflect/misc/MethodUtil;->MISC_PKG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Trampoline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsun/reflect/misc/MethodUtil;->TRAMPOLINE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil;
    move-object v1, v0

    invoke-direct {v1}, Ljava/security/SecureClassLoader;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 78
    invoke-static {}, Lsun/reflect/misc/MethodUtil;->getTrampolineClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private static addMethod(Ljava/util/Map;Ljava/lang/reflect/Method;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lsun/reflect/misc/MethodUtil$Signature;",
            "Ljava/lang/reflect/Method;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .prologue
    .line 200
    move-object v0, p0

    .local v0, "sigs":Ljava/util/Map;, "Ljava/util/Map<Lsun/reflect/misc/MethodUtil$Signature;Ljava/lang/reflect/Method;>;"
    move-object v1, p1

    .local v1, "method":Ljava/lang/reflect/Method;
    new-instance v4, Lsun/reflect/misc/MethodUtil$Signature;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v1

    invoke-direct {v5, v6}, Lsun/reflect/misc/MethodUtil$Signature;-><init>(Ljava/lang/reflect/Method;)V

    move-object v2, v4

    .line 201
    .local v2, "signature":Lsun/reflect/misc/MethodUtil$Signature;
    move-object v4, v0

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 202
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_0

    .line 207
    move-object v4, v0

    move-object v5, v2

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/reflect/Method;

    move-object v3, v4

    .line 208
    .local v3, "old":Ljava/lang/reflect/Method;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 209
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0
.end method

.method private defineClass(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Class;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "url":Ljava/net/URL;
    move-object v5, v2

    invoke-static {v5}, Lsun/reflect/misc/MethodUtil;->getBytes(Ljava/net/URL;)[B

    move-result-object v5

    move-object v3, v5

    .line 369
    .local v3, "b":[B
    new-instance v5, Ljava/security/CodeSource;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    const/4 v7, 0x0

    const/4 v8, 0x0

    check-cast v8, [Ljava/security/cert/Certificate;

    invoke-direct {v6, v7, v8}, Ljava/security/CodeSource;-><init>(Ljava/net/URL;[Ljava/security/cert/Certificate;)V

    move-object v4, v5

    .line 370
    .local v4, "cs":Ljava/security/CodeSource;
    move-object v5, v1

    sget-object v6, Lsun/reflect/misc/MethodUtil;->TRAMPOLINE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 371
    new-instance v5, Ljava/io/IOException;

    move-object v11, v5

    move-object v5, v11

    move-object v6, v11

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MethodUtil: bad name "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    const/4 v8, 0x0

    move-object v9, v3

    array-length v9, v9

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lsun/reflect/misc/MethodUtil;->defineClass(Ljava/lang/String;[BIILjava/security/CodeSource;)Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil;
    return-object v0
.end method

.method private static getBytes(Ljava/net/URL;)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    move-object v1, v6

    .line 382
    .local v1, "uc":Ljava/net/URLConnection;
    move-object v6, v1

    instance-of v6, v6, Ljava/net/HttpURLConnection;

    if-eqz v6, :cond_0

    .line 383
    move-object v6, v1

    check-cast v6, Ljava/net/HttpURLConnection;

    move-object v2, v6

    .line 384
    .local v2, "huc":Ljava/net/HttpURLConnection;
    move-object v6, v2

    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    move v3, v6

    .line 385
    .local v3, "code":I
    move v6, v3

    const/16 v7, 0x190

    if-lt v6, v7, :cond_0

    .line 386
    new-instance v6, Ljava/io/IOException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "open HTTP connection failed."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 389
    .end local v2    # "huc":Ljava/net/HttpURLConnection;
    .end local v3    # "code":I
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v6

    move v2, v6

    .line 390
    .local v2, "len":I
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v1

    invoke-virtual {v8}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 394
    .local v3, "in":Ljava/io/InputStream;
    move-object v6, v3

    move v7, v2

    const/4 v8, 0x1

    :try_start_0
    invoke-static {v6, v7, v8}, Lsun/misc/IOUtils;->readFully(Ljava/io/InputStream;IZ)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v4, v6

    .line 396
    .local v4, "b":[B
    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 397
    .line 398
    move-object v6, v4

    move-object v0, v6

    .end local v0    # "url":Ljava/net/URL;
    return-object v0

    .line 396
    .end local v4    # "b":[B
    .restart local v0    # "url":Ljava/net/URL;
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    move-object v6, v5

    throw v6
.end method

.method private static getInterfaceMethods(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lsun/reflect/misc/MethodUtil$Signature;",
            "Ljava/lang/reflect/Method;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "sigs":Ljava/util/Map;, "Ljava/util/Map<Lsun/reflect/misc/MethodUtil$Signature;Ljava/lang/reflect/Method;>;"
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v6

    move-object v2, v6

    .line 127
    .local v2, "intfs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    move v3, v6

    .local v3, "i":I
    :goto_0
    move v6, v3

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_1

    .line 128
    move-object v6, v2

    move v7, v3

    aget-object v6, v6, v7

    move-object v4, v6

    .line 129
    .local v4, "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v4

    move-object v7, v1

    invoke-static {v6, v7}, Lsun/reflect/misc/MethodUtil;->getInternalPublicMethods(Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v6

    move v5, v6

    .line 130
    .local v5, "done":Z
    move v6, v5

    if-nez v6, :cond_0

    .line 131
    move-object v6, v4

    move-object v7, v1

    invoke-static {v6, v7}, Lsun/reflect/misc/MethodUtil;->getInterfaceMethods(Ljava/lang/Class;Ljava/util/Map;)V

    .line 127
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    .end local v4    # "intf":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "done":Z
    :cond_1
    return-void
.end method

.method private static getInternalPublicMethods(Ljava/lang/Class;Ljava/util/Map;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Lsun/reflect/misc/MethodUtil$Signature;",
            "Ljava/lang/reflect/Method;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "sigs":Ljava/util/Map;, "Ljava/util/Map<Lsun/reflect/misc/MethodUtil$Signature;Ljava/lang/reflect/Method;>;"
    const/4 v6, 0x0

    move-object v2, v6

    .line 149
    .local v2, "methods":[Ljava/lang/reflect/Method;
    move-object v6, v0

    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 150
    const/4 v6, 0x0

    move v0, v6

    .line 196
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v0

    .line 152
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object v6, v0

    invoke-static {v6}, Lsun/reflect/misc/ReflectUtil;->isPackageAccessible(Ljava/lang/Class;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 153
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 156
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    move-object v2, v6

    .line 159
    .line 167
    const/4 v6, 0x1

    move v3, v6

    .line 168
    .local v3, "done":Z
    const/4 v6, 0x0

    move v4, v6

    .local v4, "i":I
    :goto_1
    move v6, v4

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_2

    .line 169
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 170
    .local v5, "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v5

    invoke-virtual {v6}, Ljava/lang/Class;->getModifiers()I

    move-result v6

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 171
    const/4 v6, 0x0

    move v3, v6

    .line 176
    .end local v5    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move v6, v3

    if-eqz v6, :cond_5

    .line 181
    const/4 v6, 0x0

    move v4, v6

    :goto_2
    move v6, v4

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 182
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lsun/reflect/misc/MethodUtil;->addMethod(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    .line 181
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 157
    .end local v3    # "done":Z
    .end local v4    # "i":I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 158
    .local v3, "se":Ljava/lang/SecurityException;
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 168
    .local v3, "done":Z
    .restart local v4    # "i":I
    .restart local v5    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 181
    .line 196
    .end local v5    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    move v6, v3

    move v0, v6

    goto :goto_0

    .line 189
    :cond_5
    const/4 v6, 0x0

    move v4, v6

    :goto_3
    move v6, v4

    move-object v7, v2

    array-length v7, v7

    if-ge v6, v7, :cond_4

    .line 190
    move-object v6, v2

    move v7, v4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 191
    .restart local v5    # "dc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 192
    move-object v6, v1

    move-object v7, v2

    move v8, v4

    aget-object v7, v7, v8

    invoke-static {v6, v7}, Lsun/reflect/misc/MethodUtil;->addMethod(Ljava/util/Map;Ljava/lang/reflect/Method;)V

    .line 189
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3
.end method

.method public static getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v2, p2

    .local v2, "args":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object v3, v0

    invoke-static {v3}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 90
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public static getMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 94
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, v0

    invoke-static {v1}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/Class;)V

    .line 95
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    return-object v0
.end method

.method public static getPublicMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 106
    move-object v0, p0

    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-nez v3, :cond_0

    .line 107
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v0, v3

    .line 118
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v1, "sigs":Ljava/util/Map;, "Ljava/util/Map<Lsun/reflect/misc/MethodUtil$Signature;Ljava/lang/reflect/Method;>;"
    :goto_0
    return-object v0

    .line 109
    .end local v1    # "sigs":Ljava/util/Map;, "Ljava/util/Map<Lsun/reflect/misc/MethodUtil$Signature;Ljava/lang/reflect/Method;>;"
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v3

    .line 110
    .restart local v1    # "sigs":Ljava/util/Map;, "Ljava/util/Map<Lsun/reflect/misc/MethodUtil$Signature;Ljava/lang/reflect/Method;>;"
    :goto_1
    move-object v3, v0

    if-eqz v3, :cond_1

    .line 111
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lsun/reflect/misc/MethodUtil;->getInternalPublicMethods(Ljava/lang/Class;Ljava/util/Map;)Z

    move-result v3

    move v2, v3

    .line 112
    .local v2, "done":Z
    move v3, v2

    if-eqz v3, :cond_2

    .line 113
    .line 118
    .end local v2    # "done":Z
    :cond_1
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/reflect/Method;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/reflect/Method;

    move-object v0, v3

    goto :goto_0

    .line 115
    .restart local v2    # "done":Z
    :cond_2
    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Lsun/reflect/misc/MethodUtil;->getInterfaceMethods(Ljava/lang/Class;Ljava/util/Map;)V

    .line 116
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    move-object v0, v3

    .line 117
    goto :goto_1
.end method

.method private static getTrampoline()Ljava/lang/reflect/Method;
    .locals 5

    .prologue
    .line 303
    :try_start_0
    new-instance v1, Lsun/reflect/misc/MethodUtil$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lsun/reflect/misc/MethodUtil$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    return-object v0

    .line 315
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/InternalError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "bouncer cannot be found"

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/InternalError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/InternalError;

    throw v1
.end method

.method private static getTrampolineClass()Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 411
    :try_start_0
    sget-object v1, Lsun/reflect/misc/MethodUtil;->TRAMPOLINE:Ljava/lang/String;

    const/4 v2, 0x1

    new-instance v3, Lsun/reflect/misc/MethodUtil;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lsun/reflect/misc/MethodUtil;-><init>()V

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v0, v1

    .line 414
    :goto_0
    return-object v0

    .line 412
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 414
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public static invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 277
    move-object v0, p0

    .local v0, "m":Ljava/lang/reflect/Method;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "params":[Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Lsun/reflect/misc/Trampoline;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "m":Ljava/lang/reflect/Method;
    return-object v0
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 347
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move-object v5, v1

    sget-object v6, Lsun/reflect/misc/MethodUtil;->MISC_PKG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 348
    new-instance v5, Ljava/lang/ClassNotFoundException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 350
    :cond_0
    move-object v5, v1

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".class"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 351
    .local v2, "path":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v5, v6}, Lsun/reflect/misc/MethodUtil;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    move-object v3, v5

    .line 352
    .local v3, "res":Ljava/net/URL;
    move-object v5, v3

    if-eqz v5, :cond_1

    .line 354
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    :try_start_0
    invoke-direct {v5, v6, v7}, Lsun/reflect/misc/MethodUtil;->defineClass(Ljava/lang/String;Ljava/net/URL;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil;
    return-object v0

    .line 355
    .restart local v0    # "this":Lsun/reflect/misc/MethodUtil;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 356
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/ClassNotFoundException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    move-object v8, v4

    invoke-direct {v6, v7, v8}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 359
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    new-instance v5, Ljava/lang/ClassNotFoundException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v1

    invoke-direct {v6, v7}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 7

    .prologue
    .line 404
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil;
    move-object v1, p1

    .local v1, "codesource":Ljava/security/CodeSource;
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Ljava/security/SecureClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v3

    move-object v2, v3

    .line 405
    .local v2, "perms":Ljava/security/PermissionCollection;
    move-object v3, v2

    new-instance v4, Ljava/security/AllPermission;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v3, v4}, Ljava/security/PermissionCollection;->add(Ljava/security/Permission;)V

    .line 406
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil;
    return-object v0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lsun/reflect/misc/MethodUtil;
    move-object v1, p1

    .local v1, "name":Ljava/lang/String;
    move v2, p2

    .local v2, "resolve":Z
    move-object v7, p0

    monitor-enter v7

    move-object v5, v1

    :try_start_0
    invoke-static {v5}, Lsun/reflect/misc/ReflectUtil;->checkPackageAccess(Ljava/lang/String;)V

    .line 326
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Lsun/reflect/misc/MethodUtil;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 327
    .local v3, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v3

    if-nez v5, :cond_0

    .line 329
    move-object v5, v0

    move-object v6, v1

    :try_start_1
    invoke-virtual {v5, v6}, Lsun/reflect/misc/MethodUtil;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v5

    move-object v3, v5

    .line 332
    .line 333
    :goto_0
    move-object v5, v3

    if-nez v5, :cond_0

    .line 334
    move-object v5, v0

    :try_start_2
    invoke-virtual {v5}, Lsun/reflect/misc/MethodUtil;->getParent()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 337
    :cond_0
    move v5, v2

    if-eqz v5, :cond_1

    .line 338
    move-object v5, v0

    move-object v6, v3

    invoke-virtual {v5, v6}, Lsun/reflect/misc/MethodUtil;->resolveClass(Ljava/lang/Class;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    :cond_1
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil;
    monitor-exit v7

    return-object v0

    .line 330
    .restart local v0    # "this":Lsun/reflect/misc/MethodUtil;
    :catch_0
    move-exception v5

    move-object v4, v5

    goto :goto_0

    .line 325
    .end local v3    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catchall_0
    move-exception v0

    monitor-exit v7

    .end local v0    # "this":Lsun/reflect/misc/MethodUtil;
    throw v0
.end method
