.class public Lcom/sun/javafx/css/Stylesheet;
.super Ljava/lang/Object;
.source "Stylesheet.java"


# static fields
.field static final BINARY_CSS_VERSION:I = 0x5


# instance fields
.field private final fontFaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/FontFace;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Ljavafx/css/StyleOrigin;

.field private final rules:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Lcom/sun/javafx/css/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private stringStore:[Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/Stylesheet;-><init>(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 78
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->AUTHOR:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Lcom/sun/javafx/css/Stylesheet;->origin:Ljavafx/css/StyleOrigin;

    .line 87
    move-object v2, v0

    new-instance v3, Lcom/sun/javafx/css/Stylesheet$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/css/Stylesheet$1;-><init>(Lcom/sun/javafx/css/Stylesheet;)V

    iput-object v3, v2, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    .line 107
    move-object v2, v0

    new-instance v3, Ljava/util/ArrayList;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/sun/javafx/css/Stylesheet;->fontFaces:Ljava/util/List;

    .line 137
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public static convertToBinary(Ljava/io/File;Ljava/io/File;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "source":Ljava/io/File;
    move-object v1, p1

    .local v1, "destination":Ljava/io/File;
    move-object v9, v0

    if-eqz v9, :cond_0

    move-object v9, v1

    if-nez v9, :cond_1

    .line 297
    :cond_0
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "parameters may not be null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 300
    :cond_1
    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    move-object v10, v1

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 301
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "source and destination may not be the same"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 304
    :cond_2
    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->canRead()Z

    move-result v9

    if-nez v9, :cond_3

    .line 305
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "cannot read source file"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 308
    :cond_3
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-nez v9, :cond_6

    .line 309
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    const-string v11, "cannot write destination file"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 308
    :cond_5
    move-object v9, v1

    invoke-virtual {v9}, Ljava/io/File;->createNewFile()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 312
    :cond_6
    move-object v9, v0

    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v9

    move-object v2, v9

    .line 313
    .local v2, "sourceURI":Ljava/net/URI;
    new-instance v9, Lcom/sun/javafx/css/parser/CSSParser;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lcom/sun/javafx/css/parser/CSSParser;-><init>()V

    move-object v10, v2

    invoke-virtual {v10}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/parser/CSSParser;->parse(Ljava/net/URL;)Lcom/sun/javafx/css/Stylesheet;

    move-result-object v9

    move-object v3, v9

    .line 316
    .local v3, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v4, v9

    .line 317
    .local v4, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v4

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v9

    .line 318
    .local v5, "dos":Ljava/io/DataOutputStream;
    new-instance v9, Lcom/sun/javafx/css/StringStore;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Lcom/sun/javafx/css/StringStore;-><init>()V

    move-object v6, v9

    .line 319
    .local v6, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v9, v3

    move-object v10, v5

    move-object v11, v6

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/css/Stylesheet;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 320
    move-object v9, v5

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 321
    move-object v9, v5

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 323
    new-instance v9, Ljava/io/FileOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v1

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v7, v9

    .line 324
    .local v7, "fos":Ljava/io/FileOutputStream;
    new-instance v9, Ljava/io/DataOutputStream;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v7

    invoke-direct {v10, v11}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v8, v9

    .line 327
    .local v8, "os":Ljava/io/DataOutputStream;
    move-object v9, v8

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 330
    move-object v9, v6

    move-object v10, v8

    invoke-virtual {v9, v10}, Lcom/sun/javafx/css/StringStore;->writeBinary(Ljava/io/DataOutputStream;)V

    .line 333
    move-object v9, v8

    move-object v10, v4

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/DataOutputStream;->write([B)V

    .line 334
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->flush()V

    .line 335
    move-object v9, v8

    invoke-virtual {v9}, Ljava/io/DataOutputStream;->close()V

    .line 336
    return-void
.end method

.method public static loadBinary(Ljava/net/URL;)Lcom/sun/javafx/css/Stylesheet;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 239
    move-object/from16 v0, p0

    .local v0, "url":Ljava/net/URL;
    move-object v9, v0

    if-nez v9, :cond_0

    const/4 v9, 0x0

    move-object v0, v9

    .line 283
    .end local v0    # "url":Ljava/net/URL;
    .local v1, "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :goto_0
    return-object v0

    .line 241
    .end local v1    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    .restart local v0    # "url":Ljava/net/URL;
    :cond_0
    const/4 v9, 0x0

    move-object v1, v9

    .line 243
    .restart local v1    # "stylesheet":Lcom/sun/javafx/css/Stylesheet;
    :try_start_0
    new-instance v9, Ljava/io/DataInputStream;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/io/BufferedInputStream;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move-object v13, v0

    .line 244
    invoke-virtual {v13}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v13

    const v14, 0xa000

    invoke-direct {v12, v13, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v10, v11}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v9

    .line 243
    .local v2, "dataInputStream":Ljava/io/DataInputStream;
    const/4 v9, 0x0

    move-object v3, v9

    .line 247
    move-object v9, v2

    :try_start_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readShort()S

    move-result v9

    move v4, v9

    .line 248
    .local v4, "bssVersion":I
    move v9, v4

    const/4 v10, 0x5

    if-le v9, v10, :cond_2

    .line 249
    new-instance v9, Ljava/io/IOException;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    invoke-virtual {v12}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " wrong binary CSS version: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move v12, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Expected version less than or equal to"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    .end local v4    # "bssVersion":I
    :catch_0
    move-exception v9

    move-object v4, v9

    move-object v9, v4

    move-object v3, v9

    move-object v9, v4

    :try_start_2
    throw v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 277
    :catchall_0
    move-exception v9

    move-object v7, v9

    move-object v9, v2

    if-eqz v9, :cond_1

    move-object v9, v3

    if-eqz v9, :cond_6

    move-object v9, v2

    :try_start_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_1
    move-object v9, v7

    :try_start_4
    throw v9
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v2    # "dataInputStream":Ljava/io/DataInputStream;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 283
    :goto_2
    move-object v9, v1

    move-object v0, v9

    goto :goto_0

    .line 254
    .restart local v2    # "dataInputStream":Ljava/io/DataInputStream;
    .restart local v4    # "bssVersion":I
    :cond_2
    move-object v9, v2

    :try_start_5
    invoke-static {v9}, Lcom/sun/javafx/css/StringStore;->readBinary(Ljava/io/DataInputStream;)[Ljava/lang/String;

    move-result-object v9

    move-object v5, v9

    .line 256
    .local v5, "strings":[Ljava/lang/String;
    new-instance v9, Lcom/sun/javafx/css/Stylesheet;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    invoke-virtual {v11}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/Stylesheet;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v1, v9

    .line 260
    move-object v9, v2

    const v10, 0x7fffffff

    :try_start_6
    invoke-virtual {v9, v10}, Ljava/io/DataInputStream;->mark(I)V

    .line 261
    move-object v9, v1

    move v10, v4

    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/javafx/css/Stylesheet;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 275
    .line 277
    :goto_3
    move-object v9, v2

    if-eqz v9, :cond_3

    move-object v9, v3

    if-eqz v9, :cond_5

    move-object v9, v2

    :try_start_7
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    .line 280
    .end local v4    # "bssVersion":I
    :cond_3
    :goto_4
    goto :goto_2

    .line 263
    .restart local v4    # "bssVersion":I
    :catch_2
    move-exception v9

    move-object v6, v9

    .line 265
    .local v6, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v9, Lcom/sun/javafx/css/Stylesheet;

    move-object v15, v9

    move-object v9, v15

    move-object v10, v15

    move-object v11, v0

    invoke-virtual {v11}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/sun/javafx/css/Stylesheet;-><init>(Ljava/lang/String;)V

    move-object v1, v9

    .line 267
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/DataInputStream;->reset()V

    .line 269
    move v9, v4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 271
    move-object v9, v1

    const/4 v10, 0x3

    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/javafx/css/Stylesheet;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)V

    goto :goto_3

    .line 273
    :cond_4
    move-object v9, v1

    const/4 v10, 0x5

    move-object v11, v2

    move-object v12, v5

    invoke-virtual {v9, v10, v11, v12}, Lcom/sun/javafx/css/Stylesheet;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    .line 277
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v9

    move-object v4, v9

    move-object v9, v3

    move-object v10, v4

    :try_start_9
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v4    # "bssVersion":I
    goto :goto_4

    .restart local v4    # "bssVersion":I
    :cond_5
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V

    goto :goto_4

    .end local v4    # "bssVersion":I
    .end local v5    # "strings":[Ljava/lang/String;
    :catch_4
    move-exception v9

    move-object v8, v9

    move-object v9, v3

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_6
    move-object v9, v2

    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 150
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .line 162
    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    :goto_0
    return v0

    .line 151
    .restart local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    :cond_0
    move-object v3, v1

    instance-of v3, v3, Lcom/sun/javafx/css/Stylesheet;

    if-eqz v3, :cond_4

    .line 152
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/Stylesheet;

    move-object v2, v3

    .line 154
    .local v2, "other":Lcom/sun/javafx/css/Stylesheet;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    if-nez v3, :cond_1

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 155
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0

    .line 156
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    if-eqz v3, :cond_2

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 157
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 159
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 162
    .end local v2    # "other":Lcom/sun/javafx/css/Stylesheet;
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method public getFontFaces()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/FontFace;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Stylesheet;->fontFaces:Ljava/util/List;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return-object v0
.end method

.method public getOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 80
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Stylesheet;->origin:Ljavafx/css/StyleOrigin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return-object v0
.end method

.method public getRules()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Rule;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return-object v0
.end method

.method final getStringStore()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Stylesheet;->stringStore:[Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 166
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    const/4 v2, 0x7

    move v1, v2

    .line 167
    .local v1, "hash":I
    const/16 v2, 0xd

    move v3, v1

    mul-int/2addr v2, v3

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    move v1, v2

    .line 168
    move v2, v1

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return v0

    .line 167
    .restart local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public importStylesheet(Lcom/sun/javafx/css/Stylesheet;)V
    .locals 14

    .prologue
    .line 340
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, p1

    .local v1, "importedStylesheet":Lcom/sun/javafx/css/Stylesheet;
    move-object v8, v1

    if-nez v8, :cond_0

    .line 353
    :goto_0
    return-void

    .line 342
    :cond_0
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/css/Stylesheet;->getRules()Ljava/util/List;

    move-result-object v8

    move-object v2, v8

    .line 343
    .local v2, "rulesToImport":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    move-object v8, v2

    if-eqz v8, :cond_1

    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    goto :goto_0

    .line 345
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    move-object v10, v2

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    move-object v3, v8

    .line 346
    .local v3, "importedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    move-object v8, v2

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_1
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Rule;

    move-object v5, v8

    .line 347
    .local v5, "rule":Lcom/sun/javafx/css/Rule;
    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/css/Rule;->getSelectors()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v6, v8

    .line 348
    .local v6, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    move-object v8, v5

    invoke-virtual {v8}, Lcom/sun/javafx/css/Rule;->getUnobservedDeclarationList()Ljava/util/List;

    move-result-object v8

    move-object v7, v8

    .line 349
    .local v7, "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    move-object v8, v3

    new-instance v9, Lcom/sun/javafx/css/Rule;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v6

    move-object v12, v7

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/css/Rule;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 350
    goto :goto_1

    .line 352
    .end local v5    # "rule":Lcom/sun/javafx/css/Rule;
    .end local v6    # "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Selector;>;"
    .end local v7    # "declarations":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Declaration;>;"
    :cond_3
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    move-object v9, v3

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v8

    .line 353
    goto :goto_0
.end method

.method final readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 213
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move/from16 v1, p1

    .local v1, "bssVersion":I
    move-object/from16 v2, p2

    .local v2, "is":Ljava/io/DataInputStream;
    move-object/from16 v3, p3

    .local v3, "strings":[Ljava/lang/String;
    move-object v11, v0

    move-object v12, v3

    iput-object v12, v11, Lcom/sun/javafx/css/Stylesheet;->stringStore:[Ljava/lang/String;

    .line 214
    move-object v11, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    move v4, v11

    .line 215
    .local v4, "index":I
    move-object v11, v0

    move-object v12, v3

    move v13, v4

    aget-object v12, v12, v13

    invoke-static {v12}, Ljavafx/css/StyleOrigin;->valueOf(Ljava/lang/String;)Ljavafx/css/StyleOrigin;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sun/javafx/css/Stylesheet;->setOrigin(Ljavafx/css/StyleOrigin;)V

    .line 216
    move-object v11, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    move v5, v11

    .line 217
    .local v5, "nRules":I
    new-instance v11, Ljava/util/ArrayList;

    move-object v15, v11

    move-object v11, v15

    move-object v12, v15

    move v13, v5

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v11

    .line 218
    .local v6, "persistedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/Rule;>;"
    const/4 v11, 0x0

    move v7, v11

    .local v7, "n":I
    :goto_0
    move v11, v7

    move v12, v5

    if-ge v11, v12, :cond_0

    .line 219
    move-object v11, v6

    move v12, v1

    move-object v13, v2

    move-object v14, v3

    invoke-static {v12, v13, v14}, Lcom/sun/javafx/css/Rule;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/Rule;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 218
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 221
    :cond_0
    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    move-object v12, v6

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v11

    .line 223
    move v11, v1

    const/4 v12, 0x5

    if-lt v11, v12, :cond_1

    .line 224
    move-object v11, v0

    invoke-virtual {v11}, Lcom/sun/javafx/css/Stylesheet;->getFontFaces()Ljava/util/List;

    move-result-object v11

    move-object v7, v11

    .line 225
    .local v7, "fontFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace;>;"
    move-object v11, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readShort()S

    move-result v11

    move v8, v11

    .line 226
    .local v8, "nFontFaces":I
    const/4 v11, 0x0

    move v9, v11

    .local v9, "n":I
    :goto_1
    move v11, v9

    move v12, v8

    if-ge v11, v12, :cond_1

    .line 227
    move v11, v1

    move-object v12, v2

    move-object v13, v3

    invoke-static {v11, v12, v13}, Lcom/sun/javafx/css/FontFace;->readBinary(ILjava/io/DataInputStream;[Ljava/lang/String;)Lcom/sun/javafx/css/FontFace;

    move-result-object v11

    move-object v10, v11

    .line 228
    .local v10, "fontFace":Lcom/sun/javafx/css/FontFace;
    move-object v11, v7

    move-object v12, v10

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 226
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 231
    .end local v7    # "fontFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace;>;"
    .end local v8    # "nFontFaces":I
    .end local v9    # "n":I
    .end local v10    # "fontFace":Lcom/sun/javafx/css/FontFace;
    :cond_1
    return-void
.end method

.method public setOrigin(Ljavafx/css/StyleOrigin;)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, p1

    .local v1, "origin":Ljavafx/css/StyleOrigin;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/css/Stylesheet;->origin:Ljavafx/css/StyleOrigin;

    .line 84
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 174
    .local v1, "sbuf":Ljava/lang/StringBuilder;
    move-object v3, v1

    const-string v4, "/* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Stylesheet;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 176
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    invoke-interface {v3}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    move-object v3, v1

    const-string v4, " */"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 185
    :cond_1
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    return-object v0

    .line 179
    .restart local v0    # "this":Lcom/sun/javafx/css/Stylesheet;
    :cond_2
    move-object v3, v1

    const-string v4, " */\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    const/4 v3, 0x0

    move v2, v3

    .local v2, "r":I
    :goto_0
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    invoke-interface {v4}, Ljavafx/collections/ObservableList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 181
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    move v5, v2

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 182
    move-object v3, v1

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method final writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 193
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Stylesheet;
    move-object v1, p1

    .local v1, "os":Ljava/io/DataOutputStream;
    move-object v2, p2

    .local v2, "stringStore":Lcom/sun/javafx/css/StringStore;
    move-object v8, v2

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/Stylesheet;->origin:Ljavafx/css/StyleOrigin;

    invoke-virtual {v9}, Ljavafx/css/StyleOrigin;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sun/javafx/css/StringStore;->addString(Ljava/lang/String;)I

    move-result v8

    move v3, v8

    .line 194
    .local v3, "index":I
    move-object v8, v1

    move v9, v3

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 195
    move-object v8, v1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    invoke-interface {v9}, Ljavafx/collections/ObservableList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 196
    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/css/Stylesheet;->rules:Ljavafx/collections/ObservableList;

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v4, v8

    :goto_0
    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/Rule;

    move-object v5, v8

    .local v5, "r":Lcom/sun/javafx/css/Rule;
    move-object v8, v5

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/css/Rule;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    goto :goto_0

    .line 199
    .end local v5    # "r":Lcom/sun/javafx/css/Rule;
    :cond_0
    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/css/Stylesheet;->getFontFaces()Ljava/util/List;

    move-result-object v8

    move-object v4, v8

    .line 200
    .local v4, "fontFaceList":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/css/FontFace;>;"
    move-object v8, v4

    if-eqz v8, :cond_1

    move-object v8, v4

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    :goto_1
    move v5, v8

    .line 201
    .local v5, "nFontFaces":I
    move-object v8, v1

    move v9, v5

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 203
    const/4 v8, 0x0

    move v6, v8

    .local v6, "n":I
    :goto_2
    move v8, v6

    move v9, v5

    if-ge v8, v9, :cond_2

    .line 204
    move-object v8, v4

    move v9, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sun/javafx/css/FontFace;

    move-object v7, v8

    .line 205
    .local v7, "fontFace":Lcom/sun/javafx/css/FontFace;
    move-object v8, v7

    move-object v9, v1

    move-object v10, v2

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/css/FontFace;->writeBinary(Ljava/io/DataOutputStream;Lcom/sun/javafx/css/StringStore;)V

    .line 203
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 200
    .end local v5    # "nFontFaces":I
    .end local v6    # "n":I
    .end local v7    # "fontFace":Lcom/sun/javafx/css/FontFace;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 207
    .restart local v5    # "nFontFaces":I
    .restart local v6    # "n":I
    :cond_2
    return-void
.end method
