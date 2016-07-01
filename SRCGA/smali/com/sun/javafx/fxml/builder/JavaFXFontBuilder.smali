.class public final Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
.super Ljava/util/AbstractMap;
.source "JavaFXFontBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private posture:Ljavafx/scene/text/FontPosture;

.field private size:D

.field private url:Ljava/net/URL;

.field private weight:Ljavafx/scene/text/FontWeight;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    .line 43
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->name:Ljava/lang/String;

    .line 44
    move-object v1, v0

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    iput-wide v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->size:D

    .line 45
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->weight:Ljavafx/scene/text/FontWeight;

    .line 46
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->posture:Ljavafx/scene/text/FontPosture;

    .line 47
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->build()Ljavafx/scene/text/Font;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/text/Font;
    .locals 13

    .prologue
    .line 52
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;

    if-eqz v7, :cond_2

    .line 55
    const/4 v7, 0x0

    move-object v3, v7

    .line 57
    .local v3, "in":Ljava/io/InputStream;
    move-object v7, v1

    :try_start_0
    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v7

    move-object v3, v7

    .line 58
    move-object v7, v3

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->size:D

    invoke-static {v7, v8, v9}, Ljavafx/scene/text/Font;->loadFont(Ljava/io/InputStream;D)Ljavafx/scene/text/Font;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v2, v7

    .line 64
    .local v2, "f":Ljavafx/scene/text/Font;
    move-object v7, v3

    if-eqz v7, :cond_0

    .line 65
    move-object v7, v3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 70
    .line 72
    .line 81
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    move-object v7, v2

    move-object v1, v7

    .end local v1    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    return-object v1

    .line 67
    .restart local v1    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    .restart local v3    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 69
    .local v4, "e":Ljava/lang/Exception;
    move-object v7, v4

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    goto :goto_0

    .line 59
    .end local v2    # "f":Ljavafx/scene/text/Font;
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    move-object v4, v7

    .line 61
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Load of font file failed from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object v10, v4

    invoke-direct {v8, v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    move-object v5, v7

    .line 64
    move-object v7, v3

    if-eqz v7, :cond_1

    .line 65
    move-object v7, v3

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 70
    :cond_1
    :goto_1
    move-object v7, v5

    throw v7

    .line 67
    :catch_2
    move-exception v7

    move-object v6, v7

    .line 69
    .local v6, "e":Ljava/lang/Exception;
    move-object v7, v6

    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->weight:Ljavafx/scene/text/FontWeight;

    if-nez v7, :cond_3

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->posture:Ljavafx/scene/text/FontPosture;

    if-nez v7, :cond_3

    .line 74
    new-instance v7, Ljavafx/scene/text/Font;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->name:Ljava/lang/String;

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->size:D

    invoke-direct {v8, v9, v10, v11}, Ljavafx/scene/text/Font;-><init>(Ljava/lang/String;D)V

    move-object v2, v7

    .restart local v2    # "f":Ljavafx/scene/text/Font;
    goto :goto_0

    .line 76
    .end local v2    # "f":Ljavafx/scene/text/Font;
    :cond_3
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->weight:Ljavafx/scene/text/FontWeight;

    if-nez v7, :cond_4

    move-object v7, v1

    sget-object v8, Ljavafx/scene/text/FontWeight;->NORMAL:Ljavafx/scene/text/FontWeight;

    iput-object v8, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->weight:Ljavafx/scene/text/FontWeight;

    .line 77
    :cond_4
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->posture:Ljavafx/scene/text/FontPosture;

    if-nez v7, :cond_5

    move-object v7, v1

    sget-object v8, Ljavafx/scene/text/FontPosture;->REGULAR:Ljavafx/scene/text/FontPosture;

    iput-object v8, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->posture:Ljavafx/scene/text/FontPosture;

    .line 78
    :cond_5
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->name:Ljava/lang/String;

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->weight:Ljavafx/scene/text/FontWeight;

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->posture:Ljavafx/scene/text/FontPosture;

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->size:D

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/text/Font;->font(Ljava/lang/String;Ljavafx/scene/text/FontWeight;Ljavafx/scene/text/FontPosture;D)Ljavafx/scene/text/Font;

    move-result-object v7

    move-object v2, v7

    .restart local v2    # "f":Ljavafx/scene/text/Font;
    goto :goto_0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    move v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/Object;
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    move-object v1, p1

    .local v1, "key":Ljava/lang/String;
    move-object/from16 v2, p2

    .local v2, "value":Ljava/lang/Object;
    const-string v9, "name"

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 87
    move-object v9, v2

    instance-of v9, v9, Ljava/net/URL;

    if-eqz v9, :cond_0

    .line 88
    move-object v9, v0

    move-object v10, v2

    check-cast v10, Ljava/net/URL;

    iput-object v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;

    .line 127
    :goto_0
    const/4 v9, 0x0

    move-object v0, v9

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    return-object v0

    .line 90
    .restart local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;
    :cond_0
    move-object v9, v0

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    iput-object v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->name:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_1
    const-string v9, "size"

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 93
    move-object v9, v0

    move-object v10, v2

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v10

    iput-wide v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->size:D

    goto :goto_0

    .line 94
    :cond_2
    const-string v9, "style"

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 95
    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    move-object v3, v9

    .line 96
    .local v3, "style":Ljava/lang/String;
    move-object v9, v3

    if-eqz v9, :cond_5

    move-object v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_5

    .line 97
    const/4 v9, 0x0

    move v4, v9

    .line 98
    .local v4, "isWeightSet":Z
    new-instance v9, Ljava/util/StringTokenizer;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v11, v3

    const-string v12, " "

    invoke-direct {v10, v11, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v9

    .local v5, "st":Ljava/util/StringTokenizer;
    :goto_1
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 99
    move-object v9, v5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    move-object v6, v9

    .line 101
    .local v6, "stylePart":Ljava/lang/String;
    move v9, v4

    if-nez v9, :cond_3

    move-object v9, v6

    invoke-static {v9}, Ljavafx/scene/text/FontWeight;->findByName(Ljava/lang/String;)Ljavafx/scene/text/FontWeight;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v7, v10

    .local v7, "fw":Ljavafx/scene/text/FontWeight;
    if-eqz v9, :cond_3

    .line 102
    move-object v9, v0

    move-object v10, v7

    iput-object v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->weight:Ljavafx/scene/text/FontWeight;

    .line 103
    const/4 v9, 0x1

    move v4, v9

    .line 104
    goto :goto_1

    .line 107
    .end local v7    # "fw":Ljavafx/scene/text/FontWeight;
    :cond_3
    move-object v9, v6

    invoke-static {v9}, Ljavafx/scene/text/FontPosture;->findByName(Ljava/lang/String;)Ljavafx/scene/text/FontPosture;

    move-result-object v9

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    move-object v8, v10

    .local v8, "fp":Ljavafx/scene/text/FontPosture;
    if-eqz v9, :cond_4

    .line 108
    move-object v9, v0

    move-object v10, v8

    iput-object v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->posture:Ljavafx/scene/text/FontPosture;

    .line 109
    goto :goto_1

    .line 111
    :cond_4
    goto :goto_1

    .line 113
    .end local v4    # "isWeightSet":Z
    .end local v5    # "st":Ljava/util/StringTokenizer;
    .end local v6    # "stylePart":Ljava/lang/String;
    .end local v8    # "fp":Ljavafx/scene/text/FontPosture;
    :cond_5
    goto :goto_0

    .end local v3    # "style":Ljava/lang/String;
    :cond_6
    const-string v9, "url"

    move-object v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 114
    move-object v9, v2

    instance-of v9, v9, Ljava/net/URL;

    if-eqz v9, :cond_7

    .line 115
    move-object v9, v0

    move-object v10, v2

    check-cast v10, Ljava/net/URL;

    iput-object v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;

    goto/16 :goto_0

    .line 118
    :cond_7
    move-object v9, v0

    :try_start_0
    new-instance v10, Ljava/net/URL;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v10, v9, Lcom/sun/javafx/fxml/builder/JavaFXFontBuilder;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto/16 :goto_0

    .line 119
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 121
    .local v3, "e":Ljava/net/MalformedURLException;
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid url "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v2

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v12, v3

    invoke-direct {v10, v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 125
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_8
    new-instance v9, Ljava/lang/IllegalArgumentException;

    move-object v13, v9

    move-object v9, v13

    move-object v10, v13

    new-instance v11, Ljava/lang/StringBuilder;

    move-object v13, v11

    move-object v11, v13

    move-object v12, v13

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown Font property: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method
