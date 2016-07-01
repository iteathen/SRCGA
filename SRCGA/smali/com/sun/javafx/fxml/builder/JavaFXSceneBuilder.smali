.class public Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
.super Ljava/lang/Object;
.source "JavaFXSceneBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/Scene;",
        ">;"
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "root"
.end annotation


# instance fields
.field private fill:Ljavafx/scene/paint/Paint;

.field private height:D

.field private root:Ljavafx/scene/Parent;

.field private stylesheets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:D


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 42
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->root:Ljavafx/scene/Parent;

    .line 43
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->width:D

    .line 44
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->height:D

    .line 45
    move-object v1, v0

    sget-object v2, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->fill:Ljavafx/scene/paint/Paint;

    .line 46
    move-object v1, v0

    new-instance v2, Ljava/util/ArrayList;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->stylesheets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 40
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->build()Ljavafx/scene/Scene;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/Scene;
    .locals 14

    .prologue
    .line 98
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    new-instance v5, Ljavafx/scene/Scene;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->root:Ljavafx/scene/Parent;

    move-object v8, v1

    iget-wide v8, v8, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->width:D

    move-object v10, v1

    iget-wide v10, v10, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->height:D

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->fill:Ljavafx/scene/paint/Paint;

    invoke-direct/range {v6 .. v12}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;)V

    move-object v2, v5

    .line 100
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->stylesheets:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v4, v5

    .line 101
    .local v4, "stylesheet":Ljava/lang/String;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v4

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 102
    goto :goto_0

    .line 104
    .end local v4    # "stylesheet":Ljava/lang/String;
    :cond_0
    move-object v5, v2

    move-object v1, v5

    .end local v1    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-object v1
.end method

.method public getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->fill:Ljavafx/scene/paint/Paint;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-object v0
.end method

.method public getHeight()D
    .locals 3

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->height:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-wide v0
.end method

.method public getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->root:Ljavafx/scene/Parent;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-object v0
.end method

.method public getStylesheets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->stylesheets:Ljava/util/ArrayList;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-object v0
.end method

.method public getWidth()D
    .locals 3

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, v0

    iget-wide v1, v1, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->width:D

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    return-wide v0
.end method

.method public setFill(Ljavafx/scene/paint/Paint;)V
    .locals 5

    .prologue
    .line 85
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, p1

    .local v1, "fill":Ljavafx/scene/paint/Paint;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/NullPointerException;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 89
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->fill:Ljavafx/scene/paint/Paint;

    .line 90
    return-void
.end method

.method public setHeight(D)V
    .locals 9

    .prologue
    .line 73
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-wide v2, p1

    .local v2, "height":D
    move-wide v4, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 74
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 77
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->height:D

    .line 78
    return-void
.end method

.method public setRoot(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->root:Ljavafx/scene/Parent;

    .line 54
    return-void
.end method

.method public setWidth(D)V
    .locals 9

    .prologue
    .line 61
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;
    move-wide v2, p1

    .local v2, "width":D
    move-wide v4, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 62
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 65
    :cond_0
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/javafx/fxml/builder/JavaFXSceneBuilder;->width:D

    .line 66
    return-void
.end method
