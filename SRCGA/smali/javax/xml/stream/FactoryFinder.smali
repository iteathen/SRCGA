.class Ljavax/xml/stream/FactoryFinder;
.super Ljava/lang/Object;
.source "FactoryFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/xml/stream/FactoryFinder$ClassLoaderFinderConcrete;,
        Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
    }
.end annotation


# static fields
.field private static debug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    const/4 v1, 0x0

    sput-boolean v1, Ljavax/xml/stream/FactoryFinder;->debug:Z

    .line 19
    :try_start_0
    const-string v1, "xml.stream.debug"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    sput-boolean v1, Ljavax/xml/stream/FactoryFinder;->debug:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    :goto_1
    return-void

    .line 19
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 12
    move-object v0, p0

    .local v0, "this":Ljavax/xml/stream/FactoryFinder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugPrintln(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 25
    move-object v0, p0

    .local v0, "msg":Ljava/lang/String;
    sget-boolean v1, Ljavax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STREAM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method

.method static find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 84
    move-object v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "factoryId":Ljava/lang/String;
    return-object v0
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 91
    move-object v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    move-object v1, p1

    .local v1, "fallbackClassName":Ljava/lang/String;
    invoke-static {}, Ljavax/xml/stream/FactoryFinder;->findClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v2, v3

    .line 92
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavax/xml/stream/FactoryFinder;->find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "factoryId":Ljava/lang/String;
    return-object v0
.end method

.method static find(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "factoryId":Ljava/lang/String;
    move-object/from16 v1, p1

    .local v1, "fallbackClassName":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "classLoader":Ljava/lang/ClassLoader;
    move-object v8, v0

    .line 117
    :try_start_0
    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 118
    .local v3, "systemProp":Ljava/lang/String;
    move-object v8, v3

    if-eqz v8, :cond_0

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found system property"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 120
    move-object v8, v3

    move-object v9, v2

    invoke-static {v8, v9}, Ljavax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    move-object v0, v8

    .line 176
    .end local v0    # "factoryId":Ljava/lang/String;
    .end local v3    # "systemProp":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 123
    .line 127
    .restart local v0    # "factoryId":Ljava/lang/String;
    :cond_0
    :goto_1
    :try_start_1
    const-string v8, "java.home"

    invoke-static {v8}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 128
    .local v3, "javah":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v3

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

    const-string v9, "jaxp.properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 130
    .local v4, "configFile":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v4

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v5, v8

    .line 131
    .local v5, "f":Ljava/io/File;
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    new-instance v8, Ljava/util/Properties;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/util/Properties;-><init>()V

    move-object v6, v8

    .line 133
    .local v6, "props":Ljava/util/Properties;
    move-object v8, v6

    new-instance v9, Ljava/io/FileInputStream;

    move-object v14, v9

    move-object v9, v14

    move-object v10, v14

    move-object v11, v5

    invoke-direct {v10, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 134
    move-object v8, v6

    move-object v9, v0

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 135
    .local v7, "factoryClassName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found java.home property "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 136
    move-object v8, v7

    move-object v9, v2

    invoke-static {v8, v9}, Ljavax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 122
    .end local v3    # "javah":Ljava/lang/String;
    .end local v4    # "configFile":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "props":Ljava/util/Properties;
    .end local v7    # "factoryClassName":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    goto/16 :goto_1

    .line 140
    .line 142
    :cond_1
    :goto_2
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

    move-object v3, v8

    .line 145
    .local v3, "serviceId":Ljava/lang/String;
    const/4 v8, 0x0

    move-object v4, v8

    .line 146
    .local v4, "is":Ljava/io/InputStream;
    move-object v8, v2

    if-nez v8, :cond_2

    .line 147
    move-object v8, v3

    :try_start_2
    invoke-static {v8}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    move-object v4, v8

    .line 152
    :goto_3
    move-object v8, v4

    if-eqz v8, :cond_3

    .line 153
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "found "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 154
    new-instance v8, Ljava/io/BufferedReader;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/io/InputStreamReader;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

    move-object v12, v4

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v5, v8

    .line 157
    .local v5, "rd":Ljava/io/BufferedReader;
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v6, v8

    .line 158
    .local v6, "factoryClassName":Ljava/lang/String;
    move-object v8, v5

    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 160
    move-object v8, v6

    if-eqz v8, :cond_3

    const-string v8, ""

    move-object v9, v6

    .line 161
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 162
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loaded from services: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 163
    move-object v8, v6

    move-object v9, v2

    invoke-static {v8, v9}, Ljavax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0

    .line 138
    .end local v3    # "serviceId":Ljava/lang/String;
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "rd":Ljava/io/BufferedReader;
    .end local v6    # "factoryClassName":Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 139
    .local v3, "ex":Ljava/lang/Exception;
    sget-boolean v8, Ljavax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v8, :cond_1

    move-object v8, v3

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 149
    .local v3, "serviceId":Ljava/lang/String;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_2
    move-object v8, v2

    move-object v9, v3

    :try_start_3
    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    move-object v4, v8

    goto :goto_3

    .line 168
    .line 170
    .end local v4    # "is":Ljava/io/InputStream;
    :cond_3
    :goto_4
    move-object v8, v1

    if-nez v8, :cond_4

    .line 171
    new-instance v8, Ljavax/xml/stream/FactoryConfigurationError;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    new-instance v10, Ljava/lang/StringBuilder;

    move-object v14, v10

    move-object v10, v14

    move-object v11, v14

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

    invoke-direct {v9, v10, v11}, Ljavax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v8

    .line 166
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v8

    move-object v4, v8

    .line 167
    .local v4, "ex":Ljava/lang/Exception;
    sget-boolean v8, Ljavax/xml/stream/FactoryFinder;->debug:Z

    if-eqz v8, :cond_3

    move-object v8, v4

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    .line 175
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loaded from fallback value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljavax/xml/stream/FactoryFinder;->debugPrintln(Ljava/lang/String;)V

    .line 176
    move-object v8, v1

    move-object v9, v2

    invoke-static {v8, v9}, Ljavax/xml/stream/FactoryFinder;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    goto/16 :goto_0
.end method

.method private static findClassLoader()Ljava/lang/ClassLoader;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 36
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Ljavax/xml/stream/FactoryFinder;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "$ClassLoaderFinderConcrete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 38
    .local v1, "clazz":Ljava/lang/Class;
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;

    move-object v2, v3

    .line 39
    .local v2, "clf":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
    move-object v3, v2

    invoke-virtual {v3}, Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v3

    move-object v0, v3

    .line 52
    .line 53
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "clf":Ljavax/xml/stream/FactoryFinder$ClassLoaderFinder;
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :goto_0
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    return-object v0

    .line 40
    .restart local v1    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 42
    .local v1, "le":Ljava/lang/LinkageError;
    const-class v3, Ljavax/xml/stream/FactoryFinder;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    .line 52
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 43
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .local v1, "clazz":Ljava/lang/Class;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 48
    .local v1, "x":Ljava/lang/ClassNotFoundException;
    const-class v3, Ljavax/xml/stream/FactoryFinder;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v0, v3

    .line 52
    .restart local v0    # "classLoader":Ljava/lang/ClassLoader;
    goto :goto_0

    .line 49
    .end local v0    # "classLoader":Ljava/lang/ClassLoader;
    .local v1, "clazz":Ljava/lang/Class;
    :catch_2
    move-exception v3

    move-object v1, v3

    .line 51
    .local v1, "x":Ljava/lang/Exception;
    new-instance v3, Ljavax/xml/stream/FactoryConfigurationError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v1

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method private static newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/FactoryConfigurationError;
        }
    .end annotation

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "className":Ljava/lang/String;
    move-object v1, p1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 66
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 70
    .local v2, "spiClass":Ljava/lang/Class;
    :goto_0
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "className":Ljava/lang/String;
    return-object v0

    .line 68
    .end local v2    # "spiClass":Ljava/lang/Class;
    .restart local v0    # "className":Ljava/lang/String;
    :cond_0
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    move-object v2, v3

    .restart local v2    # "spiClass":Ljava/lang/Class;
    goto :goto_0

    .line 71
    .end local v2    # "spiClass":Ljava/lang/Class;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 72
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    new-instance v3, Ljavax/xml/stream/FactoryConfigurationError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 74
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 75
    .local v2, "x":Ljava/lang/Exception;
    new-instance v3, Ljavax/xml/stream/FactoryConfigurationError;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " could not be instantiated: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavax/xml/stream/FactoryConfigurationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method
