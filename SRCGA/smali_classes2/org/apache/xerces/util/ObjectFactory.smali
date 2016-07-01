.class public Lorg/apache/xerces/util/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_PROPERTIES_FILENAME:Ljava/lang/String; = "xerces.properties"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Lorg/apache/xerces/util/ObjectFactory;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 118
    move-object v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fallbackClassName":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    invoke-static {v2, v3, v4}, Lorg/apache/xerces/util/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "factoryId":Ljava/lang/String;
    return-object v0
.end method

.method public static createObject(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    move-object v1, p1

    .local v1, "propertiesFilename":Ljava/lang/String;
    move-object v2, p2

    .local v2, "fallbackClassName":Ljava/lang/String;
    const-string v8, "debug is on"

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lorg/apache/xerces/util/SecuritySupport;->getInstance()Lorg/apache/xerces/util/SecuritySupport;

    move-result-object v8

    move-object v3, v8

    .line 151
    .local v3, "ss":Lorg/apache/xerces/util/SecuritySupport;
    invoke-static {}, Lorg/apache/xerces/util/ObjectFactory;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v4, v8

    .line 155
    .local v4, "cl":Ljava/lang/ClassLoader;
    move-object v8, v3

    move-object v9, v0

    :try_start_0
    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 156
    .local v5, "systemProp":Ljava/lang/String;
    move-object v8, v5

    if-eqz v8, :cond_0

    .line 157
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found system property, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 158
    move-object v8, v5

    move-object v9, v4

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 197
    .end local v0    # "factoryId":Ljava/lang/String;
    .end local v5    # "systemProp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 162
    .line 166
    .restart local v0    # "factoryId":Ljava/lang/String;
    :cond_0
    :goto_1
    move-object v8, v1

    if-nez v8, :cond_1

    .line 167
    move-object v8, v3

    :try_start_1
    const-string v9, "java.home"

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 168
    .local v5, "javah":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "lib"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "xerces.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    .line 171
    .end local v5    # "javah":Ljava/lang/String;
    :cond_1
    move-object v8, v3

    new-instance v9, Ljava/io/File;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lorg/apache/xerces/util/SecuritySupport;->getFileInputStream(Ljava/io/File;)Ljava/io/FileInputStream;

    move-result-object v8

    move-object v5, v8

    .line 172
    .local v5, "fis":Ljava/io/FileInputStream;
    new-instance v8, Ljava/util/Properties;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    move-object v6, v8

    .line 173
    .local v6, "props":Ljava/util/Properties;
    move-object v8, v6

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 174
    move-object v8, v6

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 175
    .local v7, "factoryClassName":Ljava/lang/String;
    move-object v8, v7

    if-eqz v8, :cond_2

    .line 176
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 177
    move-object v8, v7

    move-object v9, v4

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 160
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "props":Ljava/util/Properties;
    .end local v7    # "factoryClassName":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v5, v8

    goto/16 :goto_1

    .line 183
    .line 186
    :cond_2
    :goto_2
    move-object v8, v0

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    .line 187
    .local v5, "provider":Ljava/lang/Object;
    move-object v8, v5

    if-eqz v8, :cond_3

    .line 188
    move-object v8, v5

    move-object v0, v8

    goto/16 :goto_0

    .line 179
    .end local v5    # "provider":Ljava/lang/Object;
    :catch_1
    move-exception v8

    move-object v5, v8

    goto :goto_2

    .line 191
    .restart local v5    # "provider":Ljava/lang/Object;
    :cond_3
    move-object v8, v2

    if-nez v8, :cond_4

    .line 192
    new-instance v8, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v12, v10

    move-object v10, v12

    move-object v11, v12

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Provider for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " cannot be found"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 196
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "using fallback, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 197
    move-object v8, v2

    move-object v9, v4

    const/4 v10, 0x1

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 209
    return-void
.end method

.method public static findClassLoader()Ljava/lang/ClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Lorg/apache/xerces/util/SecuritySupport;->getInstance()Lorg/apache/xerces/util/SecuritySupport;

    move-result-object v2

    move-object v0, v2

    .line 222
    .local v0, "ss":Lorg/apache/xerces/util/SecuritySupport;
    move-object v2, v0

    invoke-virtual {v2}, Lorg/apache/xerces/util/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 223
    .local v1, "cl":Ljava/lang/ClassLoader;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 226
    const-class v2, Lorg/apache/xerces/util/ObjectFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    move-object v1, v2

    .line 228
    :cond_0
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "ss":Lorg/apache/xerces/util/SecuritySupport;
    return-object v0
.end method

.method private static findJarServiceProvider(Ljava/lang/String;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    invoke-static {}, Lorg/apache/xerces/util/SecuritySupport;->getInstance()Lorg/apache/xerces/util/SecuritySupport;

    move-result-object v8

    move-object v1, v8

    .line 300
    .local v1, "ss":Lorg/apache/xerces/util/SecuritySupport;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "META-INF/services/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v2, v8

    .line 301
    .local v2, "serviceId":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v3, v8

    .line 304
    .local v3, "is":Ljava/io/InputStream;
    move-object v8, v1

    invoke-virtual {v8}, Lorg/apache/xerces/util/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v4, v8

    .line 305
    .local v4, "cl":Ljava/lang/ClassLoader;
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 306
    move-object v8, v1

    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/util/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    .line 309
    move-object v8, v3

    if-nez v8, :cond_0

    .line 310
    const-class v8, Lorg/apache/xerces/util/ObjectFactory;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v4, v8

    .line 311
    move-object v8, v1

    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/util/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    .line 320
    :cond_0
    :goto_0
    move-object v8, v3

    if-nez v8, :cond_2

    .line 322
    const/4 v8, 0x0

    move-object v0, v8

    .line 375
    .end local v0    # "factoryId":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 316
    .restart local v0    # "factoryId":Ljava/lang/String;
    :cond_1
    const-class v8, Lorg/apache/xerces/util/ObjectFactory;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    move-object v4, v8

    .line 317
    move-object v8, v1

    move-object v9, v4

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lorg/apache/xerces/util/SecuritySupport;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v3, v8

    goto :goto_0

    .line 325
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found jar resource="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " using ClassLoader: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 346
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v8

    .line 349
    .line 351
    .local v5, "rd":Ljava/io/BufferedReader;
    :goto_2
    const/4 v8, 0x0

    move-object v6, v8

    .line 355
    .local v6, "factoryClassName":Ljava/lang/String;
    move-object v8, v5

    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 356
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    .line 362
    move-object v8, v6

    if-eqz v8, :cond_3

    const-string v8, ""

    move-object v9, v6

    .line 363
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 364
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found in resource, value="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V

    .line 371
    move-object v8, v6

    move-object v9, v4

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lorg/apache/xerces/util/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_1

    .line 347
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .end local v6    # "factoryClassName":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 348
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v8, Ljava/io/BufferedReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v3

    invoke-direct {v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v8

    .restart local v5    # "rd":Ljava/io/BufferedReader;
    goto :goto_2

    .line 357
    .local v6, "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v7, v8

    .line 359
    .local v7, "x":Ljava/io/IOException;
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_1

    .line 375
    .end local v7    # "x":Ljava/io/IOException;
    :cond_3
    const/4 v8, 0x0

    move-object v0, v8

    goto/16 :goto_1
.end method

.method public static findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move v2, p2

    .local v2, "doFallback":Z
    move-object v5, v1

    if-nez v5, :cond_0

    .line 274
    move-object v5, v0

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 288
    .local v3, "providerClass":Ljava/lang/Class;
    :goto_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "className":Ljava/lang/String;
    return-object v0

    .line 277
    .end local v3    # "providerClass":Ljava/lang/Class;
    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    move-object v5, v1

    move-object v6, v0

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    move-object v3, v5

    .line 286
    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 278
    .end local v3    # "providerClass":Ljava/lang/Class;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 279
    .local v4, "x":Ljava/lang/ClassNotFoundException;
    move v5, v2

    if-eqz v5, :cond_1

    .line 281
    const-class v5, Lorg/apache/xerces/util/ObjectFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v1, v5

    .line 282
    move-object v5, v1

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .restart local v3    # "providerClass":Ljava/lang/Class;
    goto :goto_0

    .line 284
    .end local v3    # "providerClass":Ljava/lang/Class;
    :cond_1
    move-object v5, v4

    throw v5
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "cl":Ljava/lang/ClassLoader;
    move v2, p2

    .local v2, "doFallback":Z
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    :try_start_0
    invoke-static {v5, v6, v7}, Lorg/apache/xerces/util/ObjectFactory;->findProviderClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 242
    .local v3, "providerClass":Ljava/lang/Class;
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    .line 243
    .local v4, "instance":Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "created new instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " using ClassLoader: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/xerces/util/ObjectFactory;->debugPrintln(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 245
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "className":Ljava/lang/String;
    return-object v0

    .line 246
    .end local v3    # "providerClass":Ljava/lang/Class;
    .end local v4    # "instance":Ljava/lang/Object;
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 247
    .local v3, "x":Ljava/lang/ClassNotFoundException;
    new-instance v5, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 249
    .end local v3    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 250
    .local v3, "x":Ljava/lang/Exception;
    new-instance v5, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Provider "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " could not be instantiated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/xerces/util/ObjectFactory$ConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method
