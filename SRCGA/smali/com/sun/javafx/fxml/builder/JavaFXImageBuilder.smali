.class public Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
.super Ljava/util/AbstractMap;
.source "JavaFXImageBuilder.java"

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
        "Ljavafx/scene/image/Image;",
        ">;"
    }
.end annotation


# instance fields
.field private backgroundLoading:Z

.field private preserveRatio:Z

.field private requestedHeight:D

.field private requestedWidth:D

.field private smooth:Z

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/util/AbstractMap;-><init>()V

    .line 38
    move-object v1, v0

    const-string v2, ""

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->url:Ljava/lang/String;

    .line 39
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->requestedWidth:D

    .line 40
    move-object v1, v0

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->requestedHeight:D

    .line 41
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->preserveRatio:Z

    .line 42
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->smooth:Z

    .line 43
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->backgroundLoading:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->build()Ljavafx/scene/image/Image;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/image/Image;
    .locals 12

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    new-instance v1, Ljavafx/scene/image/Image;

    move-object v11, v1

    move-object v1, v11

    move-object v2, v11

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->url:Ljava/lang/String;

    move-object v4, v0

    iget-wide v4, v4, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->requestedWidth:D

    move-object v6, v0

    iget-wide v6, v6, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->requestedHeight:D

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->preserveRatio:Z

    move-object v9, v0

    iget-boolean v9, v9, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->smooth:Z

    move-object v10, v0

    iget-boolean v10, v10, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->backgroundLoading:Z

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/image/Image;-><init>(Ljava/lang/String;DDZZZ)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    return-object v0
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
    .line 77
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 52
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    move-object v2, p1

    .local v2, "key":Ljava/lang/String;
    move-object v3, p2

    .local v3, "value":Ljava/lang/Object;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 53
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 55
    .local v4, "str":Ljava/lang/String;
    const-string v5, "url"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 56
    move-object v5, v1

    move-object v6, v4

    iput-object v6, v5, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->url:Ljava/lang/String;

    .line 72
    .end local v4    # "str":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v5, 0x0

    move-object v1, v5

    .end local v1    # "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    return-object v1

    .line 57
    .restart local v1    # "this":Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;
    .restart local v4    # "str":Ljava/lang/String;
    :cond_1
    const-string v5, "requestedWidth"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 58
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->requestedWidth:D

    goto :goto_0

    .line 59
    :cond_2
    const-string v5, "requestedHeight"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 60
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v5, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->requestedHeight:D

    goto :goto_0

    .line 61
    :cond_3
    const-string v5, "preserveRatio"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 62
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->preserveRatio:Z

    goto :goto_0

    .line 63
    :cond_4
    const-string v5, "smooth"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 64
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->smooth:Z

    goto :goto_0

    .line 65
    :cond_5
    const-string v5, "backgroundLoading"

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 66
    move-object v5, v1

    move-object v6, v4

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v5, Lcom/sun/javafx/fxml/builder/JavaFXImageBuilder;->backgroundLoading:Z

    goto :goto_0

    .line 68
    :cond_6
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown Image property: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
