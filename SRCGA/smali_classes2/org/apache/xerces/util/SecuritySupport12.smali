.class Lorg/apache/xerces/util/SecuritySupport12;
.super Lorg/apache/xerces/util/SecuritySupport;
.source "SecuritySupport12.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v1, v0

    invoke-direct {v1}, Lorg/apache/xerces/util/SecuritySupport;-><init>()V

    return-void
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 5

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12;
    new-instance v1, Lorg/apache/xerces/util/SecuritySupport12$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lorg/apache/xerces/util/SecuritySupport12$1;-><init>(Lorg/apache/xerces/util/SecuritySupport12;)V

    .line 76
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12;
    return-object v0
.end method

.method public getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 100
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v3, Lorg/apache/xerces/util/SecuritySupport12$3;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Lorg/apache/xerces/util/SecuritySupport12$3;-><init>(Lorg/apache/xerces/util/SecuritySupport12;Ljava/io/File;)V

    .line 101
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12;
    return-object v0

    .line 106
    .restart local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 107
    .local v2, "e":Ljava/security/PrivilegedActionException;
    move-object v3, v2

    invoke-virtual {v3}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v3

    check-cast v3, Ljava/io/FileNotFoundException;

    throw v3
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    new-instance v3, Lorg/apache/xerces/util/SecuritySupport12$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/xerces/util/SecuritySupport12$4;-><init>(Lorg/apache/xerces/util/SecuritySupport12;Ljava/lang/ClassLoader;Ljava/lang/String;)V

    .line 115
    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    move-object v0, v3

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12;
    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport12;
    move-object v1, p1

    .local v1, "propName":Ljava/lang/String;
    new-instance v2, Lorg/apache/xerces/util/SecuritySupport12$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/xerces/util/SecuritySupport12$2;-><init>(Lorg/apache/xerces/util/SecuritySupport12;Ljava/lang/String;)V

    .line 89
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport12;
    return-object v0
.end method
