.class Lorg/apache/xerces/util/SecuritySupport;
.super Ljava/lang/Object;
.source "SecuritySupport.java"


# static fields
.field private static final securitySupport:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 81
    const/4 v3, 0x0

    move-object v0, v3

    .line 83
    .local v0, "ss":Lorg/apache/xerces/util/SecuritySupport;
    :try_start_0
    const-string v3, "java.security.AccessController"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 101
    .local v1, "c":Ljava/lang/Class;
    new-instance v3, Lorg/apache/xerces/util/SecuritySupport12;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/SecuritySupport12;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 105
    move-object v3, v0

    if-nez v3, :cond_0

    .line 106
    new-instance v3, Lorg/apache/xerces/util/SecuritySupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/SecuritySupport;-><init>()V

    move-object v0, v3

    .line 107
    :cond_0
    move-object v3, v0

    sput-object v3, Lorg/apache/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 108
    .line 109
    .end local v1    # "c":Ljava/lang/Class;
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 105
    move-object v3, v0

    if-nez v3, :cond_1

    .line 106
    new-instance v3, Lorg/apache/xerces/util/SecuritySupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/SecuritySupport;-><init>()V

    move-object v0, v3

    .line 107
    :cond_1
    move-object v3, v0

    sput-object v3, Lorg/apache/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    .line 108
    goto :goto_0

    .line 105
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    if-nez v3, :cond_2

    .line 106
    new-instance v3, Lorg/apache/xerces/util/SecuritySupport;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lorg/apache/xerces/util/SecuritySupport;-><init>()V

    move-object v0, v3

    .line 107
    :cond_2
    move-object v3, v0

    sput-object v3, Lorg/apache/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    move-object v3, v2

    throw v3
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 71
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/xerces/util/SecuritySupport;
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lorg/apache/xerces/util/SecuritySupport;->securitySupport:Ljava/lang/Object;

    check-cast v0, Lorg/apache/xerces/util/SecuritySupport;

    return-object v0
.end method


# virtual methods
.method public getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport;
    return-object v0
.end method

.method public getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 130
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport;
    move-object v1, p1

    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v1

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport;
    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, p2

    .local v2, "name":Ljava/lang/String;
    move-object v4, v1

    if-nez v4, :cond_0

    .line 136
    move-object v4, v2

    invoke-static {v4}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .line 140
    .local v3, "ris":Ljava/io/InputStream;
    :goto_0
    move-object v4, v3

    move-object v0, v4

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport;
    return-object v0

    .line 138
    .end local v3    # "ris":Ljava/io/InputStream;
    .restart local v0    # "this":Lorg/apache/xerces/util/SecuritySupport;
    :cond_0
    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    move-object v3, v4

    .restart local v3    # "ris":Ljava/io/InputStream;
    goto :goto_0
.end method

.method public getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/SecuritySupport;
    move-object v1, p1

    .local v1, "propName":Ljava/lang/String;
    move-object v2, v1

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Lorg/apache/xerces/util/SecuritySupport;
    return-object v0
.end method
